class PollsController < ApplicationController
  before_action :set_poll, only: [:show ]
  skip_before_action :authenticate_user!, only: [:index, :new]
  def index
    @polls = Poll.all
    @follow = Follow.new
  end

  def user
    @user = current_user
    if !current_user.nil?
      @polls = Poll.where(user: @user)
      @user_votes = @user.votes.size
      @user_polls = @user.polls.size
      @user_reviews = @user.reviews.size
    end
  end

  def show
    @vote = Vote.new
    @review = Review.new
    @responses = @poll.responses
    @first_response = @responses.first
    @second_response = @responses.last
    @first_response_count = @first_response.votes.size
    @second_response_count = @second_response.votes.size
    @total_response = @first_response_count.to_f + @second_response_count.to_f
    if @total_response == 0
      @first_response_percent = 0
      @second_response_percent = 0
    else
    @first_response_percent = ((@first_response_count.to_f / @total_response.to_f) * 100).round(2)
    @second_response_percent = ((@second_response_count.to_f / @total_response.to_f) * 100).round(2)
    end
    if user_signed_in?
      @current_user_response = current_user.voted_for(@poll)
    end
     session[:url] = request.original_url
  end

  def new
    @poll = Poll.new
    @response = @poll.responses.new
    @categories = Category.all
  end

  def create
    @categories = Category.all
    @poll = Poll.new(poll_params)
    @poll.user = current_user
    @poll.responses << [Response.new(response_params_1), Response.new(response_params_2)]
    if @poll.save
      redirect_to poll_path(@poll)
    else
      render :new
    end
  end

  private

  def set_poll
    @poll = Poll.find(params[:id])
  end

  def poll_params
    params.require(:poll).permit(:title, :category_id)
  end

  def response_params_1
    params.require(:poll).require(:response_1).permit(:label, :picture)
  end
  def response_params_2
    params.require(:poll).require(:response_2).permit(:label, :picture)
  end
end
