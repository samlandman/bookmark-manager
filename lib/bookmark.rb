require 'pg'

class Bookmark
  
def self.all
  conn = PG.connect( dbname: 'bookmark_manager' )
  result = conn.exec( "SELECT * FROM bookmarks" ) 
  result.map { |bookmark| bookmark['url'] }
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
