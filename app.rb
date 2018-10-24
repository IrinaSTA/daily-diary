require 'sinatra/base'

class DiaryEntry < Sinatra::Base

  get '/' do
    @titles = ["Week 1 at Makers", "Week 2 at Makers"]
    erb(:homepage)
  end

  get '/add_entry' do
    erb(:add_entry)
  end

  post '/save_entry' do
    @title = params[:title]
    redirect('/')
  end

  run! if app_file == $0

end
