Rails.application.routes.draw do
  # GraphQL
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"

  # Swagger Docs
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  root :to => redirect('/api-docs')

  # REST Resources 
  namespace :api do
    namespace :v1 do
      resources :users
    end
  end

  get 'user_sessions/create'
  get 'user_sessions/destroy'
  get 'login' => 'user_sessions#create', :as => :login
  get 'logout' => 'user_sessions#destroy', :as => :logout
end
