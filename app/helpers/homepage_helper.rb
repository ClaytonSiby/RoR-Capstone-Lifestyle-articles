module HomepageHelper
  def featured_article
    Article.includes(:votes).all.max do |article_one, article_two|
      article_one <=> article_two
    end
  end
end
