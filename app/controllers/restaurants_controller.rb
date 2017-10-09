class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [ :show, :update, :edit]

  def index
    @restaurants = Restaurant.all
  end

  def show
    #where the restaurant can see its orders of the day and set the maximum amount of meals per day
    #implement in index & show how many meals left.
    #valeur par défaut pour l'instant
    @meal = Meal.where(restaurant_id: @restaurant.id).first
    @orders = Order.where(meal_id: @meal.id)
  end

  def update
    @restaurant.update(restaurant_params)
    @restaurant.save!
    redirect_to restaurant_path(@restaurant)
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:max_meal)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
