feature 'add diary entry' do
  scenario 'user can add a diary entry, giving it a title' do
    visit('/add_entry')
    fill_in('title', :with => 'First day at Makers')
    click_button('Save')
    expect(page).to have_content('First day at Makers')
  end
end
