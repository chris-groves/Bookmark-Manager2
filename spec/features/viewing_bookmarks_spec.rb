# As a user,
# so that I can access websites I marked
# I would like to see a list of bookmarks
require 'pg'

feature 'Viewing bookmarks' do
  scenario 'user can view a basic welcome page' do
  connection = PG.connect(dbname: 'bookmark_manager_test')

  connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');")
  connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
  connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

  visit('/bookmarks')

     expect(page).to have_content "http://www.google.com"
     expect(page).to have_content "http://www.makersacademy.com"
     expect(page).to have_content "http://www.destroyallsoftware.com"
   end

 scenario 'user can add a new bookmark' do
   visit('/bookmarks/new')
   fill_in('url', with: "http://www.yahoo.com" )
    click_button 'Add Bookmark'
    expect(page).to have_content "http://www.yahoo.com"
 end
end
