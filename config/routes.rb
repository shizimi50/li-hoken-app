Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
# devise_for :admins, path: :admin, class_name: "Admin::User", controllers: {
#   sessions: 'admin/devise/sessions',
#   unlocks: 'admin_devise/unlocks'
# }
