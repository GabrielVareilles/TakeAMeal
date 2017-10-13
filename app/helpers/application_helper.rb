module ApplicationHelper
  def has_subscription?
    if user_signed_in?
      @last_order = SubscriptionOrder.where(user_id: current_user.id).last
      if @last_order == nil
        return false
      elsif @last_order.end_date >= Date.today
        return true
      else
        return false
      end
    end
    return true
  end
end
