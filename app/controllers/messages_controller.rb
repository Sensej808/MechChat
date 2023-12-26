class MessagesController < ApplicationController
  before_action :set_chat

  def create
    @message = @chat.messages.build(message_params)
    @message.user_id = current_user.id if current_user

    if @message.save
      redirect_to chat_path(@chat), notice: 'Сообщение успешно отправлено.'

    else
      flash[:alert] = 'Ошибка при отправке сообщения.'
      redirect_to chat_path(@chat)
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

  def set_chat
    @chat = Chat.find(params[:id_chat])
  end

  def message_params
    params.require(:message).permit(:content, :user_id)
  end
end
