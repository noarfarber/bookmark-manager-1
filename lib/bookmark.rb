class Bookmark
  attr_accessor :bookmarks

  BOOKMARKS = [
    "www.makers.tech",
    "www.google.com",
    "www.youtube.com"
  ]

  def self.all
    # @bookmarks = BOOKMARKS.each { |website| puts website }
    BOOKMARKS
  end

end
