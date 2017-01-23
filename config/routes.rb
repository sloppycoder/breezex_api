Rails.application.routes.draw do
  get 'ping' => 'secured_resource#index'
  resources :device_registration
end
