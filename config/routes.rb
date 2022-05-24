Rails.application.routes.draw do
  resources :sessions
  resources :articles, only: [:index, :show]

  get "/me", to: "users#show"

  post "/login", to: "sessions#create" 
  delete "/logout", to: "sessions#delete"

end
