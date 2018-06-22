Rails.application.routes.draw do
  get 'contact/contactindex'
  resources :maisons
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, path: 'users'
  devise_for :agents, path: 'agents'

  get 'home/index'
  get 'home/contact'
  get 'home/logement'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
