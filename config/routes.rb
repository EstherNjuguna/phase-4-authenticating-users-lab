Rails.application.routes.draw do
  resources :articles, only: [:index, :show, :create]
  resources :sessions, only: [:index, :create, :destroy]
  resources :users, only: [:index, :show]
  post "login", to: "sessions#create"
  get "/me", to: "users#show"
  delete "logout", to: "sessions#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
