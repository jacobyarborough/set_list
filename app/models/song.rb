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

  def self.get_love_songs 
    where("lower(title) like ?", "%" + self.sanitize_sql_like("love") + "%").return_in_order
  end 

  def self.top_three(length)
    where("length > ? and updated_at > ?", length, (Time.now.midnight - 3.days)).order(play_count: :desc).limit(3) 
  end 
end 