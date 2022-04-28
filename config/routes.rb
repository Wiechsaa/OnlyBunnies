Rails.application.routes.draw do
  root 'public#homepage'
  get '/dashboard', to: "accounts#index"
  devise_for :accounts
  resources :posts
end
