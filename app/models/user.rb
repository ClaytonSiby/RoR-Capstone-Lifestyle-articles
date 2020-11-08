class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { maximum: 20 }

  has_many :articles, class_name: 'Article', foreign_key: :author_id, dependent: :destroy
  has_many :votes, dependent: :destroy
end
