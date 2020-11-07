class Article < ApplicationRecord
  validates :title, presence: true, length: { maximum: 40 }
  validates :text, presence: true

  has_one_attached :image, dependent: :destroy
  belongs_to :author, class_name: 'User'

  has_many :categories_articles
  has_many :categories, through: :categories_articles
  has_many :votes
end
