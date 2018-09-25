require 'spec_helper'


SEED_CONSTANT = 20202323



feature 'play' do
  before do
    visit('/')
    fill_in :player_name, with: "Maker"
    click_button "Submit"
  end

  scenario 'see shape options' do
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end


  scenario 'choose shape' do
    click_button "Rock"
    expect(page).to have_content "You chose Rock"
  end


  scenario 'game chooses random option' do
    srand(SEED_CONSTANT)
    click_button "Rock"
    expect(page).to have_content "Opponent chose Scissors"
  end

  scenario 'you win' do
    srand(SEED_CONSTANT)
    click_button "Rock"
    expect(page).to have_content "You win"
  end

  def possible_messages
    [:rock, :paper, :scissors].map { |shape| "Opponent chose #{shape.to_s.capitalize}" }
  end
end
