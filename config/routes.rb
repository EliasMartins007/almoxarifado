Rails.application.routes.draw do
  #get 'sessions/new'
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  ##root to: "main#index"
  #root to: 'users#index'
  
  root to: "sessions#new"#root to: "sessions#new"

  get "users", to: "users#index"
  get "materials", to: "materials#index"
  get "entrar", to: "sessions#new"
  ###get "/login", to: "session#login"
  post "entrar", to: "sessions#create"#post "/login", to: "sessions#create"#post "entrar", to: "sessions#create"
  post "/login", to: "sessions#create"
  #
  

  resources :materials
  resources :users
end
