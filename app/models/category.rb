class Category < ApplicationRecord
  validates :name, presence: true
  validates :priority, presence: true

  has_many :categories_articles
  has_many :articles, through: :categories_articles, dependent: :destroy
end
