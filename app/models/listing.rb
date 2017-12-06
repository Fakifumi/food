class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :photos
  has_many :reservations
    
  validates :special_dish, presence: true
  validates :qualification, presence: true
  validates :cooking_history, presence: true
    
    geocoded_by :address
    after_validation :geocode, :if => :address_changed?
    
end
