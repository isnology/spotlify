# == Schema Information
#
# Table name: songs
#
#  id          :integer          not null, primary key
#  name        :string
#  artist_id   :integer
#  duration    :integer
#  released_at :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Song < ApplicationRecord
  validates :name, presence: true
  validates :duration, numericality: {greater_than: 0}
  
  belongs_to :artist
  has_many :plays
  
  #def play
  #  Play.find_by(song_id: self.id)
  #end
end
