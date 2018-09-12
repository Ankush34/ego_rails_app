Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: "sessions" }
  resource :users do
  	get "/", to: 'users#index'
  	post "/create_user_from_api", to: 'users#create_user_from_api'
  end

  root to: "users#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
