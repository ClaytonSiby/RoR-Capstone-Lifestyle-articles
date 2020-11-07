class VotesController < ApplicationController
  def index; end

  def show; end

  def create; end

  private

  def vote_params
    params.require(:vote).permit(:user_id, :article_id)
  end
end
