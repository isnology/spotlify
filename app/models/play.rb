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

  # this should map better across different data bases
  scope :top10, -> {
    select('songs.name as song_name, sum(plays.count) as play_count').
      joins(:song).
      group('song_name').
      order('play_count DESC').
      limit(10)
  }
  
  # the following works for complex queries in strait sql
  #def self.top10
  #  query = <<-SQL
  #    with p as (select plays.song_id as song_id, sum(plays.count) as play_count
  #              from plays
  #              group by plays.song_id)
  #
  #    select songs.name as song_name, play_count from p
  #    join songs on p.song_id = songs.id
  #    order by play_count DESC
  #    limit 10
  #  SQL
  #
  #  self.find_by_sql(query)
  #end
end
