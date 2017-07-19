Rails.application.routes.draw do
  resources :boards, only: :index
  resources :users, only: [:new, :create]

  root 'boards#index'
end
