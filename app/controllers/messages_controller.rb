class MessagesController < ApplicationController
  before_action :set_chat

  def create
    #@chat = Chat.find(request.parameters[:id_chat])
    @message = @chat.messages.build(message_params)
    @message.user_id = User.where(:id => session[:id]).take[:id] #current_user.id if current_user
    if @message.save
      redirect_to(request.env["HTTP_REFERER"])

    else
      flash[:alert] = 'Ошибка при отправке сообщения.'
      redirect_to(request.env["HTTP_REFERER"])
    end
  end

  def delete
    @message = @chat.messages.find(params[:id_mes])
    @message.destroy
    redirect_to chat_path(@chat), notice: 'Сообщение успешно удалено.'
  end

  def edit
    @message = @chat.messages.find(params[:id_mes])
  end

  def update
    @message = @chat.messages.find(params[:id_mes])
    if @message.update(message_params)
      redirect_to chat_path(@chat), notice: 'Сообщение успешно отредактировано.'
    else
      flash[:alert] = 'Ошибка при редактировании сообщения.'
      render :edit
    end
  end

  private

  #def set_chat
  #  puts "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx"+
  #           "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx"+
  #           "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx"
  #    #@chat = Chat.find(params[:id_chat])
  #  @chat = Chat.find(request.parameters[:id_chat])
  #end

  def message_params
    params.require(:message).permit(:message, :user_id)
  end
end
