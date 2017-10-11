class OrdersController < ApplicationController
  before_action :find_order, only: [ :show, :edit, :update ]

  def new
    @order = Order.new
  end

  def create
    @meal = Meal.find(params[:meal_id])
    @order = current_user.orders.new(order_params)
    @order.meal =  @meal
    @restaurant = Restaurant.find(@meal.restaurant_id)
    if @order.save
      flash[:notice] = "Votre commande a été créée"
      redirect_to @meal
    else
      render 'meals/show'
    end
  end

  def update
    @order.status = "canceled"
    @order.save!
    redirect_to users_path(current_user)
  end

  def edit
  end

  private

    def find_order
      @order = Order.find(params[:id])
    end

   def order_params
     params.require(:order).permit(:pick_up_time)
   end
end
