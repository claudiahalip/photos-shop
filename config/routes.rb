Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "items#index"
  resources :items
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  get "/ussers/:id", to: "users#show" 

  get "/login", to: "session#new"
  post "/login", to: "session#create"
  delete "/logout", to: "session#destroy"

end
