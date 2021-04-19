feature 'Hello World' do
  scenario 'it prints Hello World' do
    visit('/')
    expect(page).to have_content 'Hello World'
  end
end
