require 'sinatra/base'

class Bookmark < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    'my bookmark'
    erb :bookmarks
  end

  run! if app_file == $0
end