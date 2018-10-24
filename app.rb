require 'sinatra/base'

class DiaryEntry < Sinatra::Base

  get '/' do
    @diary_entries = DiaryEntry.all_titles
    erb(:homepage)
  end

  get '/add_entry' do
    diary_entry = DiaryEntry.create(params[:title], params[:body])
    erb(:add_entry)
  end

  post '/save_entry' do
    redirect('/')
  end

  run! if app_file == $0

end
