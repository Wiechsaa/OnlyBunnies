Rails.application.routes.draw do
  root 'public#homepage'
  devise_for :accounts
end
