Rails.application.routes.draw do
  resources :prototypes
  resources :users, only: [:index]
  root "prototypes#index"
end
