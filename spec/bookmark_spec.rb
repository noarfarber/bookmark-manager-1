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

end
