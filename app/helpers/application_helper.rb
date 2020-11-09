module ApplicationHelper
  def vote_btn(article)
    return nil if session[:current_user].nil?

    user = User.find(session[:current_user])
    vote = user.votes.where(user_id: user.id, article_id: article.id).take
    if vote
      link_to 'Take Vote', article_vote_path(vote.id), method: 'delete', class: 'btn btn-warning btn-small'
    else
      link_to 'Vote', article_votes_path(user, votes: { user_id: user.id, article_id: article.id }),
              method: 'post', class: 'btn btn-primary btn-small'
    end
  end
end
