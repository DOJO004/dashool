Rails.application.routes.draw do
  root "cocktails#index"

  get "?base_wine=:base_wine", to: "pages#home", as: "filter_base_wine"

  resources :cocktails
end
