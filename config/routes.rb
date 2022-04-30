Rails.application.routes.draw do
  root 'public#homepage'

  get '/dashboard', to: 'accounts#index'
  get '/profiles', to: 'accounts#profiles'
  get '/profile/:username', to: 'accounts#profile', as: :profile
  post '/follow/account', to: 'accounts#follow_account', as: :follow_account
  
  get '/post/like/:post_id', to: 'likes#save_like', as: :like_post

  devise_for :accounts
  resources :posts
end
