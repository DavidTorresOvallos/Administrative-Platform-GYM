Rails.application.routes.draw do
  resources :types
#  devise_for :clients
  resources :products
#  devise_for :employees
  get 'dashboard/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
    root "dashboard#index"
end
