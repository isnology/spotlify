# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :string
#  bio        :text
#  genre      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artist < ApplicationRecord
  validates :name, presence: true
  validates :bio, presence: true, length: {maximum: 8000}
  
  has_many :songs
  
end
