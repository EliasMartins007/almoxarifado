Rails.application.routes.draw do
  resources :materials
  resources :users

  get "/users", to: "users#index"
  get "/materials", to: "materials#index"
  #root to: 'users#index'
  root to: "main#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
