module VotesHelper
  def up_or_downvote(article)
    vote = Vote.find_by(user: current_user, article: article)

    if vote
      link_to 'DownVote', article_vote_path(id: vote.id, article_id: article.id), method: :delete
    else
      link_to 'UpVote', article_votes_path(article.id), remote: true, method: :post
    end
  end
end
