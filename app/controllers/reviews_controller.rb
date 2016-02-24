require 'securerandom'

class ReviewsController < ApplicationController
  def create
    r = Review.create(stars: params[:stars], restaurant_id: params[:restaurant_id], token: SecureRandom.hex)
    render json: r
  end

  def show
    render json: Review.find(params[:id])
  end

  def destroy
    r = Review.find(params[:id])
    r.destroy
    render json: "Delete was successful."
  end
end
