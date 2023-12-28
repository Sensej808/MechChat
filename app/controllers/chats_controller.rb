class ChatsController < ApplicationController
  before_action :set_chat, except: [:create]
  def create
    @chat = Chat.create chat_params

    ChatMember.create(user_id: session[:id], chat_id: @chat[:id])
    if @chat.errors.empty?
      #render "chats/show"
      redirect_to(request.env["HTTP_REFERER"])
    else
      #render "chats/show"
      redirect_to(request.env["HTTP_REFERER"])
  end
  end

  def delete

  end

  def show
    #render "chats/show"
  end

  def addUser

    ChatMember.create(user_id: addUser_params[:id_user], chat_id: request.parameters[:id_chat])
    redirect_to(request.env["HTTP_REFERER"])
  end

  def deleteUser

  end

  def edit

  end
  #def set_chat
  #  @chat = Chat.find(request.parameters[:id_chat])
  #    #@chat = Chat.find(params[:chat][:id_chat])
  #end
  private
  def chat_params
    params.require(:chat).permit(:name)
  end
  def addUser_params
    params.require(:user).permit(:id_user)
  end
end
