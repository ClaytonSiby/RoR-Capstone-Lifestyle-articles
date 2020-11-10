module CategoriesHelper
  def last_article_in_category(category)
    category.articles.last if category.articles.exists?
  end

  def last_article_image(category)
    last_article_in_category(category)&.image if last_article_in_category(category)
  end

  def last_article_title(category)
    if last_article_in_category(category)
      last_article_in_category(category).title
    else
      'There are no articles under this category'
    end
  end

  def last_article_id(category)
    last_article_in_category(category)&.id
  end
end
