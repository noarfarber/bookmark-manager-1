require 'bookmark'

describe Bookmark do
  
  describe "#can show an array of bookmarks" do
    it "can show an array of hardcoded bookmarks" do
      expect(Bookmark.all).to include "www.makers.tech"
    end
  end

end
