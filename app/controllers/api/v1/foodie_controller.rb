class Api::V1::FoodieController < ApplicationController
  def index
    foodie = Foodie.new
    
    render json: FoodieSerializer.new(foodie)
  end
end
