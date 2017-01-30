Rails.application.routes.draw do
  # test route only accessible if propery Authorization header is set
  get 'ping' => 'secured_resource#index'

  # REST endpoints of resources
  resources :credit_cards
  resources :casa_accounts
  resources :customers

  # graphql
  resources :queries, via: [:post, :options]

  # ruby-graphiql UI
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/queries'
  end
end
