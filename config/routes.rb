Rails.application.routes.draw do
  post "/graphql",          to: "graphql/base#execute"
  get  "/graphiql",         to: "graphql/base#graphiql"
  get  "/graphql/describe", to: "graphql/base#describe"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :companies do
    resources :users, module: 'companies'
  end
end
