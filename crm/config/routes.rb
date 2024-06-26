Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'customers/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "customers#index"


  get "/customers", to: "customers#index"


  get "/customers/alphabetized", to: "customers#alphabetized"

  get "/customers/missing_email", to: "customers#missing_email"


  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
