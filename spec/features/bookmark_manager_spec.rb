


feature 'Testing the infrastructure of our app' do
  scenario 'Testing the user can see Hello World on the page' do
    visit('/')
    expect(page).to have_content("Bookmark Manager")
  end
end

feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    # Add the test data
    connection.exec("INSERT INTO bookmarks(name,url) VALUES('Makers', 'http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks(name,url) VALUES('Destroy all software', 'http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks(name,url) VALUES('Google', 'http://www.google.com');")

    visit('/bookmarks')

    expect(page).to have_content("Google")
    expect(page).to have_content("Makers")
  end
end



feature 'Testing the bookmarks page' do
  scenario 'User is forwarded to /bookmarks and can see a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    # Add the test data
    connection.exec("INSERT INTO bookmarks(name,url) VALUES('Makers', 'http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks(name,url) VALUES('Destroy all software', 'http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks(name,url) VALUES('Google', 'http://www.google.com');")

     visit('/')
    click_button('my_bookmarks')
    expect(page).to have_content("Google")
    expect(page).to have_content("Makers")
  end

  feature 'Testing the bookmarks page' do
    scenario 'User is forwarded to /bookmarks and can see a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
  
      # Add the test data
      connection.exec("INSERT INTO bookmarks(name,url) VALUES('Makers', 'http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks(name,url) VALUES('Destroy all software', 'http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks(name,url) VALUES('Google', 'http://www.google.com');")
  
      visit('/')
      click_button('add_bookmarks')
      #In Add_Bookmark Page
      #Write some text in a form
      fill_in :url, with: 'www.facebook.com'
      fill_in :name, with: 'Facebook'
      click_button('submit_bookmark')
      #Expect to see our bookmark on the bookmarks page
      expect(page).to have_content('Facebook')
    end
  end
end
