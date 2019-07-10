# feature 'testing infrastructure' do
  # scenario 'Checks home page and returns text' do
  #   visit('/')
  #   expect(page).to have_content "Testing infrastructure working!"
  # end
feature 'Enter Names' do
  scenario 'Submits names in form and prints to screen' do
    sign_in_and_play
    expect(page).to have_content "Freddie vs. Ben"
  end
end

feature 'Display Hit Points' do
  scenario 'Displays player hit points on the screen during game' do
    sign_in_and_play
    expect(page).to have_content "Freddie = 100HP"
  end
end

feature 'Attacking' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_content "Ben attacked Freddie!"
  end
end
