Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  resources :products, :only => [:show, :index]
  resources :user do
    resources :products
  end
end
