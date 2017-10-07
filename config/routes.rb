Rails.application.routes.draw do
  devise_for :restaurants
  devise_for :users, controllers: { sessions: 'users/sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [ :show, :index ]
  get "users/:id/orders/:id/reviews/new", to: "reviews#new"
  get "users/:id", to: "users#show", as: 'users'
  resources :meals, only: [ :index, :show ] do
     resources :orders, only: [ :new, :show ]
  end
  root to: "restaurants#index"
end
