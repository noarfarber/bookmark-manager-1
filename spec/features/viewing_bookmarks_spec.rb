feature 'testing root route, Bookmark Manager view' do
  scenario 'it prints title' do
    visit('/')
    expect(page).to have_content 'Bookmark Manager'
  end
end

feature 'Viewing bookmarks' do
  scenario 'shows a list of bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content 'www.makers.tech'
    expect(page).to have_content 'www.google.com'
    expect(page).to have_content 'www.youtube.com'
  end
end
