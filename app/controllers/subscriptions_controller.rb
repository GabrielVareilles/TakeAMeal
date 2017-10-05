class SubscriptionsController < ApplicationController
  def new
    @subscription = Subscription.new
  end

  def create
    @subscription = Subscription.new(subscription_params)
    @subscription.save
  end

  private

 def subscription_params
   params.require(:subscription).permit(:type, :meal_per_month)
 end
end
