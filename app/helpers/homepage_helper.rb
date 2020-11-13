module HomepageHelper
  def featured_article
    Article.includes(:votes).all.max do |article_one, article_two|
      article_one.votes.count <=> article_two.votes.count
    end
  end

  def featured_image
    featured_article ? featured_article.image : Article.default_image
  end

  def featured_article_title
    featured_article ? featured_article.title : 'No Featured Articles so far'
  end

  def featured_article_votes_count
    featured_article.votes.count
  end
end
