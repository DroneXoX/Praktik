Rails.application.routes.draw do
  devise_for :users
  devise_for :views
  resources :praktikanters
  #get 'home/index'
  get 'home/about'
  root 'home#index'
  
end
