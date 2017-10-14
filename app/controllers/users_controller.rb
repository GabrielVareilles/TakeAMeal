class UsersController < ApplicationController
  before_action :find_user, only: [ :show, :edit, :update, :account ]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
  end

  def update
  end

  def edit
    @user.update(user_params)
  end

  def show
    @has_order = has_order?
    @order = Order.where(user_id: current_user.id, status: nil).last

    #@flats = Flat.where.not(latitude: nil, longitude: nil)
    if @has_order
      @meal = @order.meal
      @restaurant = Restaurant.find(@meal.restaurant_id)
      @hash = Gmaps4rails.build_markers(@restaurant) do |restaurant, marker|
        marker.lat restaurant.latitude
        marker.lng restaurant.longitude
      end
    else

      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
    @user_subscription = SubscriptionOrder.where(user_id: current_user.id, state: "paid").last
  end

  def index
    @users = User.all
  end

  def account
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
   params.require(:user).permit(:email_address)
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
