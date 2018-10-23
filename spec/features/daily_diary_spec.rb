require 'capybara'

feature 'daily diary overview page' do
  scenario 'user can see a list of all diary entries made, by title' do
    visit('/')
    expect(page).to have_content('First diary entry')
  end

  scenario 'user can add a diary entry' do
    visit('/add')
    fill_in('title', :with => 'First diary entry')
    click_button('Save')
    expect(page).to have_content('First diary entry')
  end
end
