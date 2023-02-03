require "rails_helper" do 

RSpec.describe "Welcome Page" do, type: :feature 
  it "displays a welcome message" do 
    visit "/"

    expect(current_path).to eq("/")
    expect(page).to display("Welcome to the SetList App!")

    click_link("Artists")
    expect(page). to have_current_path("/artists")
    click_link("Home")
    expect(page).to have_current_path("/")

    click_link("songs")
    expect(page). to have_current_path("/songs")
    click_link("Home")
    expect(page).to have_current_path("/")
  end 
end 