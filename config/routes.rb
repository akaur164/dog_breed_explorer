Rails.application.routes.draw do
  root "pages#home"

  get "about", to: "pages#about"

  resources :breeds, only: [:index, :show]
  resources :groups, only: [:index, :show]
  resources :temperaments, only: [:index, :show]
end