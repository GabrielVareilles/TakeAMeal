class MealsController < ApplicationController
  before_action :find_meal, only: [ :show ]
  def index
    @meals = Meal.all
    @open = kitchen_open?
  end

  def show
    @has_order = has_order?
    @restaurant = Restaurant.find(@meal.restaurant_id)
    @order = Order.new
    @hash = Gmaps4rails.build_markers(@restaurant) do |restaurant, marker|
        marker.lat restaurant.latitude
        marker.lng restaurant.longitude
      end
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

  def has_order?
    @last_order = Order.where(user_id: current_user.id, status: nil).last
    if @last_order != nil
      if @last_order.created_at.day == Date.today.day
        return true
      elsif @last_order.created_at.day == Date.today.day - 1
        if @last_order.created_at >= Time.new(Date.today.year, Date.today.month, Date.today.day - 1, 17, 0, 0, '+02:00')
          return true
        end
      end
    end
    return false
  end
end
