require "rails_helper"

RSpec.describe "Artist Index Page" do
  it "displays all artist and artist info" do 
    prince = Artist.create!(name: 'Prince')
    rtj = Artist.create!(name: 'Run The Jewels')
    caamp = Artist.create!(name: 'Caamp')

    visit("/artists") 

    expect(path).to eq("/artists")
    expect(page).to have_content("All Artists")
    expect(page).to have_content(prince.name)
    expect(page).to have_content(rtj.name)
    expect(page).to have_content(caamp.name)
  end  
end 