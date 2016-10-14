require_relative 'models/container'
require_relative 'models/pageheader_spec'
require_relative 'models/pageheader'
require_relative 'models/panel_spec'
require_relative 'models/panel'
require_relative 'models/row'
require_relative 'models/user'

require 'yaml'
require 'json'
require 'sinatra'
require 'pry'
require 'sinatra/cross_origin'
require 'slim'
require 'tilt'
# database_config = YAML::load(File.open('config/database.yml'))

before do
  ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])
  content_type :json
end

# after do
#   ActiveRecord::Base.connection.close
# end

get '/foo' do
  headers 'Access-Control-Allow-Origin' => '' # HEROKU URL FOR PROJECT
  'hello world'
end

options '/*' do
  response['Access-Control-Allow-Headers'] =
    'origin, x-requested-with, content-type'
end

register Sinatra::CrossOrigin

configure do
  enable :cross_origin
end
# ------------------------
# if offset >= 1
#   # add it as an offset-md-number
#   # else tell it to fuck right off
# end
