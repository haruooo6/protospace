Rails.application.routes.draw do
  root "prototypes#index"
  devise_for :users, controllers: {
  registrations: 'users/registrations'
}
  resources :prototypes
  resources :users, only: :show
end
