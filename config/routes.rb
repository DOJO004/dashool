Rails.application.routes.draw do
  root "pages#home"

  devise_for :users, controllers: {
                       registrations: "users/registrations",
                       sessions: "users/sessions",
                       omniauth_callbacks: "users/omniauth_callbacks",
                     }

  scope :users do
    resources :profiles, except: %i[index] do
      resources :collects, only: %i[create destroy]
    end
  end
  
  # articles
  resources :articles
  
  # comments 
  resources :cocktails do
    resources :comments
  end

  # classic cocktails
  resources :classic_cocktails

  # like
  get "likes/:cocktail_id", to: "likes#show"
  post "likes", to: "likes#create"

  # user location
  post "/get_user_location", to: "pages#get_user_location"

  # outher
  get "setting", to: "users#setting"
  get "cocktail_map", to: "pages#cocktail_map"
  
end
