feature 'testing root route, Bookmark Manager view' do
  scenario 'it prints title' do
    visit('/')
    expect(page).to have_content 'Bookmark Manager'
  end
end

feature 'testing bookmarks route' do
  scenario 'shows a list of bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content 'makers.tech'
    expect(page).to have_content 'google.com'
    expect(page).to have_content 'youtube.com'
  end
end
