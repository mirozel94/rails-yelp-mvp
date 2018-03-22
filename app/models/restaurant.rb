class Restaurant < ApplicationRecord
  categories = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: categories, allow_nil: false }
  has_many :reviews, :dependent => :destroy

  def average_rating
    sum = reviews.map{ |r| r.rating }.reduce(:+)
    return sum.fdiv(reviews.count).round(2) if reviews.count > 0
  end
end
