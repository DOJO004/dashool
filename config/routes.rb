Rails.application.routes.draw do
  root "cocktails#index"

  devise_for :users, controllers:{
    registrations: "users/registrations",
    sessions: "users/sessions",
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  resources :cocktails

  get "/users/:id", to: "users#show", as:"user"
  get "setting", to: "users#setting"
  get "cocktail_map", to: "pages#cocktail_map"

  post '/get_user_location', to: 'pages#get_user_location'

end

