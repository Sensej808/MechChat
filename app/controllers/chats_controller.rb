class ChatsController < ApplicationController
  def create
    @chat = Chat.create chat_params
    ChatMember.create(user_id: session[:id], chat_id: @chat[:id])
      if @chat.errors.empty?
        render "chat_lists/index"
      else
        render "chat_lists/index"
    end
  end

  def delete

  end

  def show
    
  end

  def addUser

  end

  def deleteUser

  end

  def edit

  end
  private
  def chat_params
    params.require(:chat).permit(:name)
  end
end
