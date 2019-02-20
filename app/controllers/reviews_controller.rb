class ReviewsController < ApplicationController
  before_action :set_restaurant

  def create
    set_restaurant
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save

    if @review.save
      redirect_to @restaurant
    else
      render :new
    end
  end

  def new
    @review = Review.new
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end