Rails.application.routes.draw do
  devise_for :users
  root to: "mainrooms#index"
  resources :users, only: [:edit, :update, :show]
  resources :mainrooms, only: [:new, :create]
end
