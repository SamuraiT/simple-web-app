class HomeController < Sinatra::Base
  configure do
    set :views, "views"
  end
  
  get '/' do
    @users = User.all
    haml :'users/index'
  end
end
