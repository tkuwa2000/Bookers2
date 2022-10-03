Rails.application.routes.draw do
  root to: 'home#top'
  get 'home/about', to: 'home#about', as: 'about'
  resources :books
  devise_for :users
  resources :users
end