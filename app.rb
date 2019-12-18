require 'sinatra/base'
require_relative './data_mapper_setup.rb'
require_relative 'lib/santa.rb'

class SecretSanta < Sinatra::Base

  get '/' do
    erb :index
  end

  #  post '/' do
  #   erb :index
  # en  d
  #(name: params[:participant_1_name], email: params[:participant_1_email])
  post '/name' do
    participant_1 = Participant.new(name: params[:participant_1_name], email: params[:participant_1_email])
    participant_1.save
    participants = Participant.all
    p params
    redirect '/list'
    #redirect list.erb # it will print on server.
  end
  get '/list' do
    # puts "participant 1:"
    # puts participant_1.class
    @participants = Participant.all

    erb :list
  end
end
#run! if app_file == $0
