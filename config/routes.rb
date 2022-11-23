Rails.application.routes.draw do
  resources :gyms
  devise_for :employees
  get 'session/index'
  resources :types
#  devise_for :clients
  resources :products do
    member do
      get :new_invoice
    end
  end

  get 'session/index'
  root to: 'session#index'
#  get 'dashboard/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
    #root "dashboard#index"
end
