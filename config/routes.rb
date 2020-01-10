Rails.application.routes.draw do
  resources :profiles
  root 'home#index'

  # Authentication
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
end
