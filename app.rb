require 'sinatra'
require 'pry'
require 'haml'
require "sinatra/activerecord"
require './models/user'
require './controllers/users_controller'
require './controllers/home_controller'
set :database, {adapter: "sqlite3", database: "foo.sqlite3"}

class App < Sinatra::Base
  use UsersController
  use HomeController
end
