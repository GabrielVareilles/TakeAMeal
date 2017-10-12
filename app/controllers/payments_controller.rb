class PaymentsController < ApplicationController
before_action :set_order

  def new
    @subscription = Subscription.find(1)
  end

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       @subscription_order.amount_cents,
      description:  "Paiement de l'abonnement #{@subscription_order.subscription.name}, commande #{@subscription_order.id}",
      currency:     @subscription_order.amount.currency
    )

    @subscription_order.update(payment: charge.to_json, state: 'paid')
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

