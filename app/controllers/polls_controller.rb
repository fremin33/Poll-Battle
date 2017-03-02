class PollsController < ApplicationController
  before_action :set_poll, only: [:show ]
  skip_before_action :authenticate_user!, only: [:show, :new]

  def show
    @vote = Vote.new
    @responses = @poll.responses
    @first_response = @responses.first
    @second_response = @responses.last
    @first_response_count = @first_response.votes.size
    @second_response_count = @second_response.votes.size

    if user_signed_in?
      @current_user_response = current_user.voted_for(@poll)
    end
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
