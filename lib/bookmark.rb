require 'pg'

class Bookmark
  attr_accessor :bookmarks


  def self.all
    # @bookmarks = BOOKMARKS.each { |website| puts website }
    connection = PG.connect(dbname: 'bookmark_manager')
    result = connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['url'] }
  end

end
