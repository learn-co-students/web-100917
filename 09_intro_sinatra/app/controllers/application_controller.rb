class ApplicationController < Sinatra::Base
  set :views, Proc.new {File.join('app', "views")}

  # '/', say hello
  # what type of request should it be?
  # what should the route be?
  # what should the controller DO (controller action)
  get '/anything' do
    # I want to show a random number (between 1 and 100) in the view
    @user = User.find(1) #if we had User model
    erb :index # look for views/index.erb
  end

  get '/welcome' do
    @random_number = rand(0..100)
    erb :welcome
  end

end
