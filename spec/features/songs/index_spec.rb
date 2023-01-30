require "rails_helper"

RSpec.describe "songs index page", type: :feature do 
  it "Can see all song titles and play count" do 
    song1 = Song.create!(title: "I really like you", length: 208, play_count: 2468)
    song2 = Song.create!(title: "Call me maybe", length: 199, play_count: 1357)

    visit "/songs"

    expect(page).to have_content(song1.title)
    expect(page).to have_content("Play Count: #{song1.play_count}")
    expect(page).to have_content(song2.title)
    expect(page).to have_content("Play Count: #{song2.play_count}")
    expect(page).to have_content("Set List Songs")
  end 
end 