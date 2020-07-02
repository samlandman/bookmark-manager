require 'pg'

class Bookmark
  attr_reader :name, :url, :id
  
def self.all
  database_selector
  result = @connection.exec( "SELECT * FROM bookmarks" ) 
  result.map { |bookmark| Bookmark.new(bookmark['title'],bookmark['url']) }
end

def self.create(url = nil, name = nil)
  database_selector
  @connection.exec("INSERT INTO bookmarks(url,title)VALUES('#{url}','#{name}')")
end

def initialize(name = nil,url)
  @name = name
  @url = url
end

  #
  #
  # def initialize(user, url, name, tag_collection, comment_collection)
  #   @user = user
  #   @url = url
  #   @name = name
  #   @tag_collection = tag_collection
  #   @comment_collection = comment_collection
  #
  # end
  def self.delete(input)
    input = input.delete('checkbox')
    
    database_selector

    @connection.exec("DELETE FROM bookmarks WHERE title='#{input}'")
  end

  private

  def self.database_selector
    if ENV['ENVIRONMENT'] == 'test'
      @connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      @connection = PG.connect( dbname: 'bookmark_manager' )
    end
  end

  

end
