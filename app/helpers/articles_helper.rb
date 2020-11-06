module ArticlesHelper
  def remove_image?(article)
    article.image.attached?
  end
end
