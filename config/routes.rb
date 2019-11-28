Rails.application.routes.draw do
  resources :families
  resources :brides
  resources :grooms
  root 'grooms#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
