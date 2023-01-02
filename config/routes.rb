Rails.application.routes.draw do
  get 'medicines/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/medicines" => "medicines#index"
  post "/medicines/new" => "medicines#create"
  delete "/medicines/:id" => "medicines#destroy"

  get "/signup" => "users#new"
  post "/users" => "users#create"
end
