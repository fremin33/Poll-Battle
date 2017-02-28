class PollsController < ApplicationController
  def index
  end

  def show
    @vote = Vote.new
    @poll = Poll.find(params[:id])
    @responses = @poll.responses
    @first_response = @responses.first
    @second_response = @responses.last
    @first_response_count = @first_response.votes.count
    @second_response_count = @second_response.votes.count
  end

  def create
    @poll = Poll.find(params[:id])

  end

end
