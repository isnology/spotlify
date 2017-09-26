# == Schema Information
#
# Table name: plays
#
#  id        :integer          not null, primary key
#  song_id   :integer
#  count     :integer
#  play_date :date
#

class Play < ApplicationRecord
  belongs_to :song
end
