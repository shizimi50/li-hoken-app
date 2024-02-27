class UserController < ActionController::Base
  def index
    @q = User.my_search_method(set_ransack_auth_object)
    @articles = @q.result
  end
  private

  def set_ransack_auth_object
    current_user.admin? ? :admin : nil
  end
end
