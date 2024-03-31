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
end
