class Restaurant < ApplicationRecord
  CAT = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: CAT }
  validates :name, presence: true
  validates :address, presence: true
end
