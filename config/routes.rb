Rails.application.routes.draw do
  root to: 'homes#top'
  get 'homes/about', to: 'homes#about', as: 'about'
  resources :books
  devise_for :users
  resources :users, only: [:show, :edit, :index]
end