class SubscriptionsController < ApplicationController
  def new
  end

  def create
  end

   def subscriptions_params
     params.require(:subscription).permit(:type, :meal_per_month)
   end
end
