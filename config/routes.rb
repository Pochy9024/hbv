Rails.application.routes.draw do
  resources :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :houses
  resources :bookings
  resources :packages
  resources :tur_types
  resources :services
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root 'houses#index'
end
