class MealsController < ApplicationController
  before_action :find_meal, only: [ :show ]
  def index
    @meals = Meal.all
    @open = kitchen_open?
  end

  def show
    @restaurant = Restaurant.find(@meal.restaurant_id)
    @order = Order.new
  end

  private

  def find_meal
    @meal = Meal.find(params[:id])
  end

  def meal_params
    params.require(:meal).permit(:name, :description, :photo, :photo_cache)
  end

  def kitchen_open?
    @eleven_am = Time.new(Date.today.year, Date.today.month, Date.today.day, 11, 0, 0, '+02:00')
    @five_pm = Time.new(Date.today.year, Date.today.month, Date.today.day, 17, 0, 0, '+02:00')
    @time = Time.now
    if @time >= @eleven_am && @time <= @five_pm
      return false
    end
    true
  end
end
