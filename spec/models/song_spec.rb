require "rails_helper"

RSpec.describe Song, type: :model do 
  describe "validations" do 
    it { should validate_presence_of :title }
    it { should validate_presence_of :length }
    it { should validate_presence_of :play_count }
  end 

  describe "class methods" do 
    describe ".song_count" do 
      it "returns the number of songs in the db" do 
        prince = Artist.create!(name: 'Prince')
        talking_heads = Artist.create!(name: 'Talking Heads')
        rasperry_beret = prince.songs.create!(title: 'Raspberry Beret', length: 234, play_count: 34)
        wild_life = talking_heads.songs.create!(title: 'Wild Wild Life', length: 456, play_count: 45)

        expect(Song.song_count).to eq(2)
      end 
    end 

    describe ".return_in_order" do 
      it "returns all songs listed alphabetically" do 
        prince = Artist.create!(name: 'Prince')
        talking_heads = Artist.create!(name: 'Talking Heads')
        rasperry_beret = prince.songs.create!(title: 'Raspberry Beret', length: 234, play_count: 34)
        wild_life = talking_heads.songs.create!(title: 'Wild Wild Life', length: 456, play_count: 45)

        expect(Song.return_in_order).to eq([rasperry_beret, wild_life])
      end 
    end 
  end 
end 