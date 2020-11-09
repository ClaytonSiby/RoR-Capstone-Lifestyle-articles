class Article < ApplicationRecord
  validates :title, presence: true, length: { maximum: 40 }
  validates :text, presence: true

  has_one_attached :image, dependent: :destroy
  belongs_to :author, class_name: 'User'

  has_many :categories_articles #, foreign_key: 'article_id'
  has_many :categories, through: :categories_articles, dependent: :destroy
  has_many :votes, class_name: 'Vote', foreign_key: 'article_id', dependent: :destroy

  def self.featured_article
    includes(:votes).all.max { |a, b| a.votes.count <=> b.votes.count }
  end
end
