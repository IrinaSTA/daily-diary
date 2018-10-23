require 'sinatra/base'

class DailyDiary < Sinatra::Base

  get '/' do
    @diary_entries = ["First day at Makers", "TDD is awesome"]
    erb(:homepage)
  end

  get '/add_entry' do
    erb(:add_entry)
  end

  post '/save_entry' do
    redirect('/')
  end

  run! if app_file == $0

end
