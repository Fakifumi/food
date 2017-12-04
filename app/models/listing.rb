class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :photos
    
  validates :special_dish, presence: true
  validates :qualification, presence: true
  validates :cooking_history, presence: true
    
end
