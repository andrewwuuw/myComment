Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :posts
  get 'menu', to: 'posts#menu'

  namespace :account do
    resources :posts
  end
end
