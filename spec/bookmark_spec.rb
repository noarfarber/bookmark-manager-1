require 'bookmark'

describe Bookmark do
  
  describe "#can show an array of bookmarks" do
    it "can show an array of hardcoded bookmarks" do
      bookmarks = Bookmark.all
      expect(bookmarks).to include "http://www.makers.tech"
    end
  end

end
