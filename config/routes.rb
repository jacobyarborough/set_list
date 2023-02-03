Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/", to: "welcome#index"

  get "/songs", to: "songs#index"
  get "/songs/:id", to: "songs#show"

  get "/artists", to: "artists#index"
end
