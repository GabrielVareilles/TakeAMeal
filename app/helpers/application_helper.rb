module ApplicationHelper
  def has_subscription?
    @last_order = SubscriptionOrder.where(user_id: current_user.id).last
    if @last_order == nil
      return @last_order
    elsif @last_order.end_date >= Date.today
      return true
    else
      return false
    end
  end
end
