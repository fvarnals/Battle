# feature 'testing infrastructure' do
  # scenario 'Checks home page and returns text' do
  #   visit('/')
  #   expect(page).to have_content "Testing infrastructure working!"
  # end
feature 'Enter Names' do
  let(:name) { double :name }
  scenario 'Submits names in form and prints to screen' do
    sign_in_and_play
    expect(page).to have_content "Ben vs. Freddie"
  end
end

feature 'Display Hit Points' do
  scenario 'Displays player hit points on the screen during game' do
    sign_in_and_play
    expect(page).to have_content "Freddie = 100HP"
  end
end
