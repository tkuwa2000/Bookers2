Rails.application.routes.draw do
  root to: 'home#top'
  get 'home/about', to: 'home#about', as: 'about'
  resources :books do
    resource :favorites, only: [:create, :destroy]
  end
  devise_for :users
  resources :users
end