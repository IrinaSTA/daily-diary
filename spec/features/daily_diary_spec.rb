feature 'daily diary overview page' do
  scenario 'user can see a list of all diary entries made, by title' do
    visit('/')
    expect(page).to have_content('First day at Makers')
    expect(page).to have_content('TDD is awesome')
  end
end
