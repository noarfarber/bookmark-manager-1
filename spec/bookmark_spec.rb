require 'bookmark'

describe Bookmark do
  
  describe ".all" do
    it "can show a list of bookmarks" do
      connection = PG.connect(dbname: 'bookmark_manager_test', user: 'postgres', password: 'postgres')

      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makers.tech');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.youtube.com');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include "http://www.makers.tech"
      expect(bookmarks).to include "http://www.youtube.com"
    end
  end

  describe ".create" do
    it "creates a new bookmark" do
      Bookmark.create(url: "http://www.google.co.uk")
      expect(Bookmark.all).to include "http://www.google.co.uk"
    end
  end

end
