# encoding: UTF-8
require 'sinatra'

denied = ['Anthony Goddard', 'Kristen Lans']

get '/' do
  name = params[:name]

  if name.nil?
    return erb :index
  end

  # Everyone is a Certified Thought Leader!
  message = "#{name} is a <br />Certified Thought Leader™"
  color = "#000"

  # Except for those that are not ;)
  if denied.include? name
    message = "Awsnap. #{name} is not a <br />Certified Thought Leader™<br />That's awkward."
    color = "#F00"
  end

  erb :leader, :locals => {:message => message, :color => color}
end

