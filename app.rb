require 'sinatra/base'

class DailyDiary < Sinatra::Base

  get '/' do
    "First diary entry"
  end

  get '/add' do
    erb(:add)
  end

  post '/save_entry' do
    redirect('/')
  end

  run! if app_file == $0

end
