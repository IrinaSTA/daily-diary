feature 'add new diary entry' do
  scenario 'user can save a new entry title' do
    visit('/')
    click_link("New Entry")
    fill_in(:title, with: "Week 1 at Makers")
    click_button("Save")
    expect(page).to have_content("Week 1 at Makers")
  end
end
