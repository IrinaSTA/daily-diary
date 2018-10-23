require 'sinatra/base'

class DailyDiary < Sinatra::Base

  get '/' do
    @diary_entries = ["First day at Makers", "TDD is awesome"]
    erb(:homepage)
  end

  get '/add' do
    erb(:add)
  end

  post '/save_entry' do
    redirect('/')
  end

  run! if app_file == $0

end
