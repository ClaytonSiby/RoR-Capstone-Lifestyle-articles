class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { maximum: 20 }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  has_many :articles, class_name: 'Article', foreign_key: :author_id, dependent: :destroy
  has_many :votes, class_name: 'Vote', foreign_key: 'user_id', dependent: :destroy
end
