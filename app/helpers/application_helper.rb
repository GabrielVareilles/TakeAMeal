module ApplicationHelper
  def has_subscription?
    if current_user != nil # not ok
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
end
