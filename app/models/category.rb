class Category < ApplicationRecord
  validates :name, presence: true

  has_many :categories_articles
  has_many :articles, through: :categories_articles
end
