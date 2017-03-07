class ReviewsController < ApplicationController
  before_action :set_poll, only: [:new, :create]
  skip_before_action :authenticate_user!, only: [:new]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.poll = @poll
    @review.user = current_user
    if @review.save
      respond_to do |format|
        format.html { redirect_to poll_path(@poll) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'polls/show' }
        format.js
      end
    end
  end

  private

  def set_poll
    @poll = Poll.find(params[:poll_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end


