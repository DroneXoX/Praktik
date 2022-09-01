Rails.application.routes.draw do
  resources :praktikanters
  #get 'home/index'
  get 'home/about'
  root 'home#index'
  
end
