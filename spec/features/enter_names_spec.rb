# feature 'testing infrastructure' do
  # scenario 'Checks home page and returns text' do
  #   visit('/')
  #   expect(page).to have_content "Testing infrastructure working!"
  # end
feature 'Enter Names' do
  let(:name) { double :name }
  scenario 'Submits names in form and prints to screen' do
    visit('/')
    fill_in :player_1_name, with: "Ben"
    fill_in :player_2_name, with: 'Freddie'
    click_button 'Submit'
    expect(page).to have_content "Ben vs. Freddie"
  end
end

feature 'Display Hit Points' do
  scenario 'Displays player hit points on the screen during game' do
    visit('/')
    fill_in :player_1_name, with: "Man"
    fill_in :player_2_name, with: "Car"
    click_button 'Submit'
    expect(page).to have_content "Car = 100HP"
  end
end
