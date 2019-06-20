require 'sinatra/base'
require './lib/bookmark'


class BookmarkManager < Sinatra::Base
  get '/bookmarks' do
    @array_of_bookmarks = Bookmark.all
    erb :view_bookmarks
  end

  get '/bookmarks/new' do
   erb :"bookmarks/new"
  end

  post '/bookmarks' do
    url = params['url']
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
      redirect '/bookmarks'
  end
  run! if app_file == $0
end
