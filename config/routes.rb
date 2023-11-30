Rails.application.routes.draw do
  resources :accounts, only: %i[index show new create edit update destroy]
  resources :roles, only: %i[index show new create edit update destroy]
  root 'accounts#index'
end
