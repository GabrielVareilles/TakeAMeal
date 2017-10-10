class SubscriptionsController < ApplicationController
  # skip_before_action :authenticate_user!
  def index
    @subscriptions = Subscription.all
  end

  def new
    @Subscription = Subscription.new
  end

  def create
    @subscription = Subscription.new(subscription_params)
    @subscription.save
  end

  def show
    @subscription = Subscription.find(params[:id])
  end

  private

 def subscription_params
   params.require(:subscription).permit(:type, :meal_per_month)
 end
end
