require 'uri'
class ApplicationController < ActionController::Base
  def set_chat
    #puts request.parameters[:id_chat]
    #puts request.parameters[:id_chat]
    #puts request.parameters[:id_chat]
    #puts request.parameters[:id_chat]
    #puts "YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY"
    puts request.parameters
    puts request.parameters
    puts request.parameters
    puts request.parameters[:id_chat]
    puts request.parameters[:id_chat]
    puts request.parameters[:id_chat]
    @chat = Chat.find(request.parameters[:id_chat])
  end
end
