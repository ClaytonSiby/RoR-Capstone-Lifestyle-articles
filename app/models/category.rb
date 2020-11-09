class Category < ApplicationRecord
  validates :name, presence: true

  has_many :categories_articles #, foreign_key: 'category_id'
  has_many :articles, through: :categories_articles, dependent: :destroy
end
