require "rails_helper" 

RSpec.describe "songs show page", type: :feature do
  it "shows the details of a song that a user clicks on" do 
    song1 = Song.create!(title: "I really like you", length: 208, play_count: 2468)
    song2 = Song.create!(title: "Call me maybe", length: 199, play_count: 1357)

    visit("/songs")

    click_link("I really like you")
    expect(current_path).to eq("/songs/#{song1.id}")
    expect(page).to have_content("Title: I really like you")
    expect(page).to have_content("Length: #{song1.length}")
    expect(page).to have_content("Play Count: #{song1.play_count}")
  end 
end 