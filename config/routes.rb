Rails.application.routes.draw do
  get 'session/index'
  resources :types
#  devise_for :clients
  resources :products do
    member do
      get :new_invoice
    end
  end
  root 'session#index'
#  devise_for :employees
  get 'dashboard/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
    #root "dashboard#index"
end
