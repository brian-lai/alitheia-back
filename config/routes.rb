# Rails.application.routes.draw do
#   resources :profiles
#   root 'home#index'
#
#   # Authentication
#   post 'auth/login', to: 'authentication#authenticate'
#   post 'signup', to: 'users#create'
# end

# config/routes
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  scope module: :v2, constraints: ApiVersion.new('v2') do
    resources :test do

    end
  end
  # namespace the controllers without affecting the URI
  scope module: :v1, constraints: ApiVersion.new('v1', true) do
    resources :test do

    end
    # resources :todos do
    #   resources :items
    # end
  end


  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
end
