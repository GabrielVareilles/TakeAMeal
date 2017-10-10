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
    @meal = Meal.where(restaurant_id: @restaurant.id).first
    @orders = Order.where(meal_id: @meal.id)

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
end
