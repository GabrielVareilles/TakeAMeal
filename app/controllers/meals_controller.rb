class MealsController < ApplicationController
  before_action :find_cocktail, only: [ :show ]
  def index
    @meals = Meal.all
  end

  def show
  end

  private

  def find_meal
    @meal = Meal.find(params[:id])
  end

  def meal_params
    params.require(:meal).permit(:name, :description, :photo, :photo_cache)
  end
end
