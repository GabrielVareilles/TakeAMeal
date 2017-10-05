Rails.application.routes.draw do
  get 'restaurants/index'

  get 'restaurants/show'

  devise_for :restaurants
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
