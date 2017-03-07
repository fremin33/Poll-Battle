class VotesController < ApplicationController
  def create
    @response = Response.find(params[:response_id])
    @current_user_response = current_user.voted_for(@response.poll)

    if @current_user_response # si j'ai déjà voté
      # update la réponse
      @vote = @current_user_response.votes.find_by(user: current_user)
      @vote.response = @response
    else # sinon (nouveau vote)
      @vote = @response.votes.new()
      @vote.user = current_user
    end
    @vote.save
    redirect_to poll_path(@response.poll)
  end
end
