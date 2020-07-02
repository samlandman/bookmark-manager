require 'sinatra/base'
require './lib/bookmark'

class Bookmark_Manager < Sinatra::Base
  enable :sessions, :method_override

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
      erb :bookmarks
  end

  post '/add_bookmarks' do
    @bookmarks = Bookmark.all
    url = params['url']
    name = params['name']
    Bookmark.create(url,name)
    redirect '/bookmarks'
  end

  get '/add_bookmarks' do
    @bookmarks = Bookmark.all
    erb :add_bookmarks
  end

  get '/delete_bookmarks' do
    @bookmarks = Bookmark.all
    erb :delete
  end

  delete '/bookmarks/' do
    p params
    p "are we before the delete?"
    id = params[:id]
    Bookmark.delete(id)
    p "are we getting here?"
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
