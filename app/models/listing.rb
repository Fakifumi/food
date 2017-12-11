class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :photos
  has_many :reservations
  has_many :reviews

  #必須項目
  validates :special_dish, presence: true
  validates :qualification, presence: true
  validates :cooking_history, presence: true

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  
  def average_star_rate
    reviews.count == 0 ? 0 : reviews.average(:rate).round(1)
  end
end
