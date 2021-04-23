feature 'Adding a new bookmark' do
  scenario 'user can add a bookmark to the list' do
    visit '/bookmarks/new'
    fill_in('url', with: 'http://www.google.co.uk')
    fill_in('title', with: 'Google')
    click_button('add bookmark')
    
    expect(page).to have_link('Google', href: 'http://www.google.co.uk')
  end
end
