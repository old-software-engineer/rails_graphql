Rails.application.routes.draw do
  resources :books
  resources :blogs
  post "/graphql", to: "graphql#execute"
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  scope '/api/v1' do
    resources :posts
  end  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
