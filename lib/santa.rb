require 'data_mapper'
puts "This file was read\n\n"

class Participant
  include DataMapper::Resource
  # def initialize (name, email)
  #     attr_reader :
  #     @name = name
  #     @eamil = email
  property :id,   Serial
  property :name, String
  property :email, String #:format => :email_address
  property :receiver, String
  
end
