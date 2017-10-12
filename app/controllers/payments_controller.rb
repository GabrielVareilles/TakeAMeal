class PaymentsController < ApplicationController
before_action :set_order

  def new
    @subscription = Subscription.find(@subscription_order.subscription_id)
  end

  def create
    if current_user.stripe_id == nil
      customer = Stripe::Customer.create(
        source: params[:stripeToken],
        email:  current_user.email
      )
      current_user.stripe_id = customer.id
    end
    @subscription = Subscription.find(@subscription_order.subscription_id)
    abonnement = Stripe::Subscription.create(
      customer:     current_user.stripe_id,
      items: [
          {
            :plan => @subscription.stripe_id
          },
        ],
    )

    @subscription_order.update(payment: abonnement.to_json, state: 'paid')
    redirect_to subscriptions_order_path(@subscription_order)

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_subscriptions_order_payment_path(@subscription_order)
  end


private

  def set_order
    @subscription_order = SubscriptionOrder.where(state: 'pending').find(params[:subscriptions_order_id])
  end
end

