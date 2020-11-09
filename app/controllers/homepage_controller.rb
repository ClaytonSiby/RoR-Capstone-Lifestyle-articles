class HomepageController < ApplicationController
  def index
    @featured_article = Article.featured_article
    @categories = Category.all
  end
end
