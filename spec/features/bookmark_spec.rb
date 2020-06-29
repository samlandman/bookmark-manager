feature 'Testing the infrastructure of our app' do
  scenario 'Testing the user can see Hello World on the page' do
    visit('/')
    expect(page).to have_content("Hello World!")
  end
end