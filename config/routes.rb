Rails.application.routes.draw do
  resources :couples do
    resources :comments
  end
  resources :brides
  resources :grooms
  root 'grooms#index'
  get 'ajax/:action', to: 'ajax#:action', :defaults => { :format => 'json' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
