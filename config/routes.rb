Rails.application.routes.draw do
  # test route only accessible if propery Authorization header is set
  get 'ping' => 'secured_resource#index'

  # REST endpoints of resources
  resources :credit_cards
  resources :casa_accounts
  resources :customers

  # ruby-graphiql UI
  mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/queries"
end
