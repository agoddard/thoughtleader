# encoding: utf-8
require 'sinatra'

denied = ['Anthony Goddard', 'Kristen Lans', 'dat Board of Regents']

get '/' do
  name = params[:name]

  if name.nil?
    return erb :index
  end

  # Everyone is a Certified Thought Leader!
  message = "#{name} is a <br />Certified Thought Leader™"
  color = "#000"
  title = "#{name} is a certified thought leader."

  # Except for those that are not ;)
  if denied.include? name
    message = "Awsnap. #{name} is not a <br />Certified Thought Leader™<br />That's awkward."
    color = "#F00"
    title = "WARNING WARNING WARNING WARNING WARNING WARNING"
  end

  if name == "Jason Dixon"
    message = "#{name} is a Certified Thought Leader™ <br /><br />...on the Chipotle menu and Archer seasons 1-2"
  end

  erb :leader, :locals => {:message => message, :color => color, :title => title}
end
