Rails.application.routes.draw do
  resources :accounts, only: %i[index show new create edit update]
  root 'accounts#index'
end
