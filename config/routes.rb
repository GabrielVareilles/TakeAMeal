Rails.application.routes.draw do
  devise_for :restaurants
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [ :show, :index ]
  resources :restaurants do
    resources :meals, only: [ :index, :show ]
    resources :meals do
      resources :orders, only: [ :new ]
      resources :orders do
        resources :reviews, only: [ :new ]
      end
    end
  end
  resources :meals, only: [ :index ]

end
