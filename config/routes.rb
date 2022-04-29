Rails.application.routes.draw do
  root 'public#homepage'
  get '/dashboard', to: 'accounts#index'
  get '/profiles', to: 'accounts#profiles'
  get '/profile/:username', to: 'accounts#profile', as: :profile
  devise_for :accounts
  resources :posts
end
