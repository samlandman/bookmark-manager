feature 'deleting a bookmark' do
  scenario "I am in the test environment and all the bookmarks unchecked field'" do
    visit '/'
    click_button('delete_bookmarks')

    expect(page).to have_unchecked_field 'Makers'
  end

  scenario "I am in the test environment and delete the Makers bookmark'" do
    visit '/'
    click_button('delete_bookmarks')
    check 'Makerscheckbox'
    click_button('DeleteMakers')
    expect(page).not_to have_content('Makers')
    expect(page).to have_content('Google')
  end
end