Rails.application.routes.draw do
  root 'public#homepage'

  get '/dashboard', to: 'accounts#index'
  get '/profiles', to: 'accounts#profiles'
  get '/profile/:username', to: 'accounts#profile', as: :profile
  get '/post/like/:post_id', to: 'likes#save_like', as: :like_post

  devise_for :accounts
  resources :posts
end
