class SubscriptionsOrdersController < ApplicationController
  def create
  subscription = Subscription.find(params[:subscription_id])
  @end_date = Date.today + 30
  subscription_order  = SubscriptionOrder.create!(amount: subscription.price_cents, state: 'pending', end_date: @end_date, subscription: subscription, user: current_user)

  redirect_to new_subscriptions_order_payment_path(subscription_order)
  end

  def show
  # @subscription_order = SubscriptionOrder.where(state: 'paid').find(params[:id])
  end
end
