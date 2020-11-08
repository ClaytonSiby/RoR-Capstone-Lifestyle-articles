class HomepageController < ApplicationController
  def index
    @featured_article = Article.all
    @categories = Category.all
  end
end
