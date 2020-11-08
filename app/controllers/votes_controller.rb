class VotesController < ApplicationController
  def create
    @vote = current_user.votes.new(article_id: [params[:article_id]])

    if @vote.save
      redirect_to root_path, notice: 'You just voted for the article!'
    else
      redirect_to root_path, alert: 'You cannot like this article'
    end
  end

  def destroy
    vote = Vote.find_by(id: params[:id], user: current_user, article_id: params[:article_id])

    if vote
      vote.destroy
      redirect_to root_path, notice: 'You disliked an article'
    else
      redirect_to root_path, alert: 'You cannot dislike an article that you did not like before.'
    end
  end
end
