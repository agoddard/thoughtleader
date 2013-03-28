require 'sinatra'

denied = ['Anthony Goddard']

get '/' do
  if params[:name]
    if denied.include? params[:name] 
      erb :denied
    else
      erb :name
    end
  else
    erb :index
  end
end

