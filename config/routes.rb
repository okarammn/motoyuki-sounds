Rails.application.routes.draw do
  resources :profiles
  resources :contacts
  resources :works
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'articles#index'
  resources :articles
  resources :profiles, only: [:edit, :update, :show]
end
