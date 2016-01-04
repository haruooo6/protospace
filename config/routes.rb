Rails.application.routes.draw do
  root "prototypes#index"
  devise_for :users, controllers: {
  registrations: 'users/registrations'
}
  resources :users, only: :show
  resources :prototypes do
    resources :pictures
  end
end
