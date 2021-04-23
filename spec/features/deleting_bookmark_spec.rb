feature 'Deleting bookmarks' do
  scenario 'the user can delete a bookmark' do
    Bookmark.create(url: "http://www.google.com", title: "Google")
    visit('/bookmarks')
    expect(page).to have_link("Google", href: "http://www.google.com")
    
    first('.bookmark').click_button 'delete bookmark'
    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link("Google", href: "http://www.google.com")
  end
end