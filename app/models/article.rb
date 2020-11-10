class Article < ApplicationRecord
  validates :title, presence: true, length: { maximum: 40 }
  validates :text, presence: true

  has_one_attached :image, dependent: :destroy
  belongs_to :author, class_name: 'User'

  has_many :categories_articles
  has_many :categories, through: :categories_articles, dependent: :destroy
  has_many :votes, class_name: 'Vote', foreign_key: 'article_id', dependent: :destroy

  def self.default_image
    'https://res.cloudinary.com/lifestyle-articles/image/upload/v1604647869/sample.jpg'
  end
end
