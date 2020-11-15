class VotesController < ApplicationController
  before_action :find_article
  before_action :find_vote, only: [:destroy]

  def create
    if !vote_exists?
      @vote = current_user.votes.create(article_id: params[:article_id])
      flash[:notice] = 'You voted for an article!'
    else
      flash[:alert] = 'An error kept you from voting for the selected article!'
    end
    redirect_to category_path(@article)
  end

  def destroy
    if vote_exists?
      @vote.destroy
      flash[:notice] = 'You downvoted an article!'
    else
      flash[:alert] = 'You cannot downvote the selected article!'
    end
    redirect_to category_path(@article)
  end

  def find_article
    @article = Article.find(params[:article_id])
  end

  def vote_exists?
    Vote.where(user_id: current_user.id, article_id: params[:article_id]).exists?
  end

  def find_vote
    @vote = @article.votes.find(params[:id])
  end
end
