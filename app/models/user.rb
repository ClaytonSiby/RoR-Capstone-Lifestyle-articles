class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { maximum: 20 }

  has_many :articles
  has_many :votes
end
