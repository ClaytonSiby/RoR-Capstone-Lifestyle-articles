class Article < ApplicationRecord
  validates :title, presence: true, length: { maximum: 40 }
  validates :text, presence: true

  has_one_attached :image, dependent: :destroy
end
