Rails.application.routes.draw do
  get 'medicines/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/medicines" => "medicines#index"
  post "/medicines/new" => "medicines#create"
  patch "/medicines/:id" => "medicines#update"
  get "/medicines/:id/edit" => "medicines#edit"
  delete "/medicines/:id" => "medicines#destroy"

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
