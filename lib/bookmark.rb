require 'pg'

class Bookmark
  attr_reader :name, :url
  
def self.all
  if ENV['ENVIRONMENT'] == 'test'
  connection = PG.connect(dbname: 'bookmark_manager_test')
  else
  connection = PG.connect( dbname: 'bookmark_manager' )
  end
  result = connection.exec( "SELECT * FROM bookmarks" ) 
  result.map { |bookmark| Bookmark.new(bookmark['name'],bookmark['url']) }
end

def self.create(param)
  puts "We are in the Create Method"
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

end
