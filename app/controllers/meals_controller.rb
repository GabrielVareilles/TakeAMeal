class MealsController < ApplicationController

  def index
  end

  def show
  end

  private

  def meal_params
    params.require(:product).permit(:name, :description, :photo, :photo_cache)
  end
end
