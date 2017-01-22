Rails.application.routes.draw do
  get 'ping' => 'secured_resource#index'
end
