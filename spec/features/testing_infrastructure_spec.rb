feature 'testing infrastructure' do
  scenario 'Checks home page and returns text' do
    visit('/')
    expect(page).to have_content "Testing infrastructure working!"
  end
end
