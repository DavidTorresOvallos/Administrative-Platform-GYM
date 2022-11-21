Rails.application.routes.draw do
  get 'gyms/index'
  get 'gyms/show'
  get 'gyms/new'
  get 'gyms/edit'
  get 'gyms/create'
  get 'gyms/update'
  get 'gyms/destroy'
  get 'session/index'
  resources :types
#  devise_for :clients
  resources :products do
    member do
      get :new_invoice
    end
  end

  get 'session/index'
  root 'session#index'
#  devise_for :employees
  get 'dashboard/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
    #root "dashboard#index"
end
