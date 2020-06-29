class Bookmark

  attr_reader :user, :url, :name, :tag_collection, :comment_collection

  def initialize(user, url, name, tag_collection, comment_collection)  
    @user = user
    @url = url
    @name = name
    @tag_collection = tag_collection
    @comment_collection = comment_collection

  end 

end