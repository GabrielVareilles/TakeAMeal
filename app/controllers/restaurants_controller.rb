class RestaurantsController < ApplicationController
  include Pundit
  skip_before_action :authenticate_user!, raise: false

  before_action :find_restaurant, only: [ :show, :update, :edit]
  before_action :authenticate_restaurant!, only: :show

  after_action :verify_authorized, only: :show, unless: :skip_pundit?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(root_path)
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
    #where the restaurant can see its orders of the day and set the maximum amount of meals per day
    #implement in index & show how many meals left.
    #valeur par défaut pour l'instant
    # authorize @restaurant
    if @restaurant == current_restaurant
      @meal = Meal.where(restaurant_id: @restaurant.id).first
      @orders = Order.where("created_at >= :start_time and meal_id = :meal", start_time: today_or_yesterday?, meal: @meal)

    else
      flash[:alert] = "You are not authorized to perform this action, BATERD."
      redirect_to(root_path)
    end
    authorize @restaurant
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

  def today_or_yesterday?
    if DateTime.now <= DateTime.new(Date.today.year, Date.today.month, Date.today.day,15, 0, 0, "+02:00")
      @start_time = DateTime.new(Date.today.year, Date.today.month, Date.today.day - 1, 17, 0, 0, "+02:00")
    else
      @start_time = DateTime.new(Date.today.year, Date.today.month, Date.today.day, 17, 0, 0, "+02:00")
    end
    @start_time
  end
end
