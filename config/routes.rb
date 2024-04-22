Rails.application.routes.draw do
  root "cocktails#index"

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
  get "search", to: "pages#search", as: "search"

  post "/get_user_location", to: "pages#get_user_location"
end
