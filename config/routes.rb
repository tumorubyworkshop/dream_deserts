Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  resources :products

  resources :cart_items, only: [:destroy]

  get '/cart', to: 'carts#index'

  get '/cart/add', to: 'carts#add'

  get '/cart/checkout', to: 'carts#checkout'

  get '/cart/:id', to: 'carts#show', as: 'carts'
end
