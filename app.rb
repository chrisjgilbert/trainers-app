current_dir = Dir.pwd
Dir["#{current_dir}/models/*.rb"].each { |file| require file }
require 'sinatra'
require 'sinatra/activerecord'

set :database_file, 'config/database.yml'

class TrainersApp < Sinatra::Base

  get '/' do
    @trainers = Trainer.all
    erb :index
  end

end
