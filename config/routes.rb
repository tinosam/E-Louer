Rails.application.routes.draw do
<<<<<<< HEAD
  get 'home/index'
  root 'home#index'
=======
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, path: 'users'
devise_for :agents, path: 'agents'
>>>>>>> 1ad33c9ef9891904d5343de8c7ea9a157a813087
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
