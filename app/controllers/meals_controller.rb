class MealsController < ApplicationController
  before_action :find_meal, only: [ :show ]
  def index
    @meals = Meal.all
  end

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
    @order = Order.find(params[:id])
  end

  private

  def find_meal
    @meal = Meal.find(params[:id])
  end

  def meal_params
    params.require(:meal).permit(:name, :description, :photo, :photo_cache)
  end
end
