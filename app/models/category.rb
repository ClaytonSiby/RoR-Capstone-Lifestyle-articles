class Category < ApplicationRecord
  validates :name, presence: true
  has_many :articles, through: :categories_articles
end
