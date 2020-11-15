class HomepageController < ApplicationController
  def index
    @categories = Category.includes(:articles).all.order(priority: 'DESC')
  end
end
