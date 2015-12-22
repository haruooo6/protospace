Rails.application.routes.draw do
  root "prototypes#index"
  devise_for :users
  resources :prototypes
  resources :users, only: :show
end
