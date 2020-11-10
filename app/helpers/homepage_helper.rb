module HomepageHelper
  def featured_article
    Article.includes(:votes).all.max do |article_one, article_two|
      article_one.votes.count <=> article_two.votes.count
    end
  end

  def hero_image
    featured_article ? featured_article.image : Article.no_articles_img
  end

  def featured_article_title
    featured_article ? featured_article.title : 'No Featured Articles so far'
  end
end
