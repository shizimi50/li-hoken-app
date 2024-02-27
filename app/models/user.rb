class User < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "name", "updated_at"]
  end

  def self.my_search_method(auth_object = nil)
    if auth_object == :admin
      ransack(params[:q])
    else
      ransack(params[:q]).ransackable_attributes & %w(name)
    end
  end
end
