class Song < ApplicationRecord
  validates :name, presence: true
  validates :duration, numericality: {greater_than: 0}
  
  belongs_to :artist
  
end
