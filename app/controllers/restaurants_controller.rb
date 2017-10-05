class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [ :show, :interface ]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def interface
    #where the restaurant can see its orders of the day and set the maximum amount of meals per day
    #implement in index & show how many meals left.
    @restaurant.max_meal = 15
    #valeur par défaut pour l'instant
  end

  private

  def find_meal
    @restaurant = Restaurant.find(params[:id])
  end

end
