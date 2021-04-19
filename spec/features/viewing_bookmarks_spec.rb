feature 'Hello World' do
  scenario 'it prints Hello World' do
    visit('/')
    expect(page).to have_content 'Bookmark Manager'
  end
end
