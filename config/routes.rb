Rails.application.routes.draw do
  resources :prototypes
  resources :users, only: [:show]
  root to: "top#index"
end
