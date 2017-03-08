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
    if @vote.save
      set_intances_var
      respond_to do |format|
        format.js
        format.html {redirect_to poll_path(@response.poll)}
      end
    end
  end
  private

  def set_intances_var
    @f_count = @response.poll.responses.first.votes.size
    @s_count = @response.poll.responses.last.votes.size
    total_count = @f_count + @s_count
    @f_calcul = (@f_count.to_f / total_count.to_f) * 100
    @s_calcul = (@s_count.to_f / total_count.to_f) * 100
  end
end
