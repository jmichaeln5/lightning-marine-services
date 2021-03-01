Rails.application.routes.draw do
  resources :posts
  devise_for :users
  get 'welcome/home', as: 'home'
  get 'app', to: 'welcome#react', as: 'react'
  root 'welcome#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
