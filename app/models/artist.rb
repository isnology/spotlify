class Artist < ApplicationRecord
  validates :name, presence: true
  validates :bio, presence: true, length: {maximum: 8000}
end
