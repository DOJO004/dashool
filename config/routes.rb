Rails.application.routes.draw do
  root "pages#home"

  devise_for :users, controllers: {
                       registrations: "users/registrations",
                       sessions: "users/sessions",
                       omniauth_callbacks: "users/omniauth_callbacks",
                     }

  scope :users do
    resources :profiles, except: %i[index]
  end

  resources :cocktails
  resources :classic_cocktails

  get "setting", to: "users#setting"
  get "cocktail_map", to: "pages#cocktail_map"

  ## like
  get "likes/:cocktail_id", to: "likes#get_likes_count"
  post "add_like/:cocktail_id", to: "likes#create", as: "add_like"
  post "/get_user_location", to: "pages#get_user_location"
end
