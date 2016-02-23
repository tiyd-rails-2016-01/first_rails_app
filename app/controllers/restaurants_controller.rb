class RestaurantsController < ApplicationController
  def index
    render json: Restaurant.all
  end

  def show
    id = params["id"]
    render json: Restaurant.find(id)
  end

  def create
    Restaurant.create
  end
end
