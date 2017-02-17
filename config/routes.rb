Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  resources :user do
    resources :products
  end
  resources :products do
    resources :comments
  end
  resources :comments
  resources :images
  resources :products do
    resources :images
  end
end
