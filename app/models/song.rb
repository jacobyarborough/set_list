class Song < ApplicationRecord
  validates_presence_of :title, :length, :play_count

  belongs_to :artist

  def self.song_count 
    distinct.count
  end 

  def self.return_in_order 
    order(title: :asc)
  end 

  def self.return_shortest(count)
    order(length: :asc).limit(count)
  end 
end 