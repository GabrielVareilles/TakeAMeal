class RestaurantPolicy
  attr_reader :record, :restaurant
  def initialize(record, current_restaurant)
    @record = record
    @restaurant = current_restaurant
  end

  def update?
    true
  end

  def show?
    true
  end
end
