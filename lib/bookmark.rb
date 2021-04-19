class Bookmark
  attr_accessor :bookmarks

BOOKMARKS = ["makers.tech","google.com","youtube.com"]

  def self.all
    # @bookmarks = BOOKMARKS.each { |website| puts website }
    BOOKMARKS
  end

end