require 'pg'

class Bookmark
  attr_accessor :bookmarks

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test', user: 'postgres', password: 'postgres')
    else
      connection = PG.connect(dbname: 'bookmark_manager', user: 'postgres', password: 'postgres')
    end

    bookmarks = connection.exec("SELECT * FROM bookmarks;")
    bookmarks.map { |bookmark| bookmark['url'] }
  end

  def self.create(url:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test', user: 'postgres', password: 'postgres')
    else
      connection = PG.connect(dbname: 'bookmark_manager', user: 'postgres', password: 'postgres')
    end
  
    connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
    
  end

end
