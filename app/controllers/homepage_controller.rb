class HomepageController < ApplicationController
  def index
    @articles = Article.all.order(:created_at)
  end
end
