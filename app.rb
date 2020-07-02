require 'sinatra/base'
require './lib/bookmark'

class Bookmark_Manager < Sinatra::Base
  enable :sessions

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
  run! if app_file == $0
end
