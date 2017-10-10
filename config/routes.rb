Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :restaurants
  devise_for :users, controllers: { sessions: 'users/sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [ :show, :index, :update]
  get "users/:id/orders/:id/reviews/new", to: "reviews#new"
  get "users/:id", to: "users#show", as: 'users'
  resources :meals, only: [ :index, :show ] do
     resources :orders, only: [ :new, :show, :create, :update ]
  end
  resources :subscriptions, only: [:index, :show]
  resources :subscriptions_orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end

  root to: "restaurants#index"
end
