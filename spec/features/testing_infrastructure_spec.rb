# feature 'testing infrastructure' do
  # scenario 'Checks home page and returns text' do
  #   visit('/')
  #   expect(page).to have_content "Testing infrastructure working!"
  # end
feature 'Enter Names' do
  scenario 'Submits names in form and prints to screen' do
    visit('/')
    fill_in :player_1_name, with: 'Ben'
    fill_in :player_2_name, with: 'Freddie'
    click_button 'Submit'
    expect(page).to have_content "Ben vs. Freddie"
  end
end
