Rails.application.routes.draw do
  root "prototypes#index"
  devise_for :users
  resources :prototypes do
    resources :pictures
  end
end
