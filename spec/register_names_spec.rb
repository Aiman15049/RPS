require 'spec_helper'

feature 'register name' do
  scenario 'register name' do
    visit('/')
    fill_in :player_name, with: "Maker"
    click_button "Submit"
    expect(page).to have_content "Maker"
  end
end
