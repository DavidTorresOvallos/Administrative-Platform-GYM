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
  devise_for :employees, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  
#  get 'dashboard/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
    #root "dashboard#index"
end
