class ApplicationController < Sinatra::Base
  # One controller inheriting directly from Sinatra::Base
  # specific to the needs of every controller in my application

  set :views, Proc.new {File.join('app', "views")}
  set :method_override, true

  enable :sessions
  set :session_secret, "my_fave_app"

  get '/login' do
    erb :'static/login'
  end

  post '/sessions' do
    user = User.find_by(username: params[:username])
    if user.authenticate(params[:password])
      # log the user in to my site
      session[:user_id] = user.id
      redirect "/books"
    else
      redirect "/login"
    end
  end

end
