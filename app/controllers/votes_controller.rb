class VotesController < ApplicationController
  def create
    @response = Response.find(params[:response_id])
    @vote = @response.votes.new()
    @vote.user = current_user
    @vote.save
    redirect_to poll_path(@response.poll)
  end
end
