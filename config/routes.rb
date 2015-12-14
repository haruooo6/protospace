Rails.application.routes.draw do
  resources :prototypes
  resources :users, only: [:show]
  root "top#index"
end
