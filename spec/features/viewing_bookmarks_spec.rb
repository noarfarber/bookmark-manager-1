feature 'testing root route, Bookmark Manager view' do
  scenario 'it prints title' do
    visit('/')
    expect(page).to have_content 'Bookmark Manager'
  end
end

feature 'Viewing bookmarks' do
  scenario 'shows a list of bookmarks' do
    Bookmark.create(url: 'http://www.makers.tech', title: 'Makers Academy')
    Bookmark.create(url: 'http://www.youtube.com', title: 'Youtube')
    Bookmark.create(url: 'http://www.twitter.com', title: 'Twitter')

    # connection = PG.connect(dbname: 'bookmark_manager_test', user: 'postgres', password: 'postgres')
   
    # connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makers.tech');")
    # connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.youtube.com');")
    # connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.twitter.com');")

    visit('/bookmarks')

    expect(page).to have_link('Makers Academy', href: 'http://www.makers.tech')
    expect(page).to have_link('Youtube', href: 'http://www.youtube.com') 
    expect(page).to have_link('Twitter', href: 'http://www.twitter.com') 
  end
end
