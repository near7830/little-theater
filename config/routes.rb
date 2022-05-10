Rails.application.routes.draw do
  devise_for :users
  root to: "mainrooms#index"
  resources :users, only: [:edit, :update, :show]
  resources :mainrooms, only: [:new, :create] do
    resources :messages, only: [:index, :create]
  end
end
