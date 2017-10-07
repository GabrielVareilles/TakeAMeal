class OrdersController < ApplicationController

  def new
  end

  def create
  end

  def update
    find_order
    @order.status = "canceled"
  end

  private

  def find_order
    @order = Order.find(params[:id])
  end
end
