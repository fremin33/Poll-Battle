class PollsController < ApplicationController
  before_action :set_poll, only: [ :show, :create]
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @vote = Vote.new
    @responses = @poll.responses
    @first_response = @responses.first
    @second_response = @responses.last
    @first_response_count = @first_response.votes.size
    @second_response_count = @second_response.votes.size
  end

  def create
  end

  private

  def set_poll
    @poll = Poll.find(params[:id])
  end
end
