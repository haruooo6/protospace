Rails.application.routes.draw do
  root "prototypes#index"
  devise_for :users, controllers: {
  registrations: 'users/registrations'
  }
  resources :users, only: :show
  resources :newest, only: :index
  resources :popular, only: :index
  resources :tags, only: [:index, :show]

  resources :prototypes do
    resources :pictures
    resources :comments, only: [:create]
    resources :likes, only: [:create, :destroy]
  end
end
