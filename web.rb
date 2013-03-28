require 'sinatra'


get '/' do
  if params[:name]
    erb :name
  else
    erb :index
  end
end

