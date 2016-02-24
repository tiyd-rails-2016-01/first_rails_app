class RestaurantsController < ApplicationController
  def index
    render json: Restaurant.all
  end

  def show
    id = params[:id]
    render json: Restaurant.find(id)
  end

  def create
    r = Restaurant.create(name: params[:name], genre: params[:genre])
    render json: r
  end
end
