Rails.application.routes.draw do
  devise_for :users
  resources :prototypes
  resources :users, only: [:show, :edit]
  root "prototypes#index"
end
