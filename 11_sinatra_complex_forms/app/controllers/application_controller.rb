class ApplicationController < Sinatra::Base
  # One controller inheriting directly from Sinatra::Base
  # specific to the needs of every controller in my application

  set :views, Proc.new {File.join('app', "views")}
  set :method_override, true

end
