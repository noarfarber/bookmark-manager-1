require 'bookmark'
require 'database_helpers'

describe Bookmark do
  
  describe ".all" do
    it "can show a list of bookmarks" do
      PG.connect(dbname: 'bookmark_manager_test', user: 'postgres', password: 'postgres')

      bookmark = Bookmark.create(url: "http://www.makers.tech", title: "Makers Academy")
      Bookmark.create(url: "http://www.youtube.com", title: "Youtube")
      Bookmark.create(url: "http://www.google.com", title: "Google")
      
      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Makers Academy'
      expect(bookmarks.first.url).to eq 'http://www.makers.tech'
    end
  end

  describe ".create" do
    it "creates a new bookmark" do
      bookmark = Bookmark.create(url: "http://www.google.co.uk", title: "Google")
      persisted_data = persisted_data(id: bookmark.id)
      
      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data['id']
      expect(bookmark.title).to eq 'Google'
      expect(bookmark.url).to eq 'http://www.google.co.uk'
    end
  end

  describe ".delete" do 
    it "can delete a bookmark" do
      bookmark = Bookmark.create(url: "http://www.google.co.uk", title: "Google")
      Bookmark.delete(id: bookmark.id)

      expect(Bookmark.all.length).to eq 0
    end
  end
end
