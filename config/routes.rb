Rails.application.routes.draw do
  resources :boards, only: :index
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :destroy]

  root 'boards#index'
end
