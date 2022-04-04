class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  configure do
    set :public_folder, 'public'
    set :default_content_type, :json
  end

  get "/" do
    erb :welcome
  end

end
