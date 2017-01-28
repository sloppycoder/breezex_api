Rails.application.routes.draw do
  resources :credit_cards
  resources :casa_accounts
  resources :customers
  get 'ping' => 'secured_resource#index'
end
