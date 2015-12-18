Rails.application.routes.draw do
  devise_for :users
  resources :prototypes
  resources :users, only: [:index]
  root "prototypes#index"
end
