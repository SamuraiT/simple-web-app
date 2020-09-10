class UsersController < Sinatra::Base
  configure do
    set :views, "views"
  end

  get '/users/' do 
    @users = User.all
    haml :'users/index'
  end

  get '/users/:id/' do
    @user = User.find(params['id'])
    haml :"/users/show"
  end

  get '/users/:id/edit' do
    @user = User.find(params['id'])
    haml :'users/edit'
  end

  enable :method_override
  put '/users/:id/edit' do
    @user = User.find(params['id'])
    @user.update(name: params['name'], email: params['email'])
    redirect "/users/#{@user.id}/"
  end

  get '/user/new' do
    @users = User.new
    haml :'users/new'
  end

  post '/user/create' do
    @user = User.new(name: params['name'], email: params["email"])
    @user.save
    redirect '/users/'
  end
end
