Rails.application.routes.draw do
  
  resources :usuarios
  devise_for :users
  #devise_for :users do get '/users/sign_in' => 'devise/registrations#new' end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  
  root to: "home#index"
  resources :users
  resources :words
  resources :places
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
