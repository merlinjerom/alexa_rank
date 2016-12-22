Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  get 'static_dynamic/home'

  get 'static_dynamic/about'

  get 'static_dynamic/contact'

  root 'domains#index'
  resources :domains
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
