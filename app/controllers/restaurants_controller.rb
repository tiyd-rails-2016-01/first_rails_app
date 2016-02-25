class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    r = Restaurant.create(name: params[:name], genre: params[:genre])
    render json: r
  end
end
