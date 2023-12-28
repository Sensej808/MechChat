class UsersController < ApplicationController
  def create
    @user = User.create user_params
    if @user.errors.empty?
      session[:id] = @user[:id]
      redirect_to action: :show, id_user: session[:id]
    else
      flash.now[:alert] = @user.errors.full_messages.join(', ')
      render 'new', status: :unprocessable_entity
    end
  end

  def delete

  end

  def edit

  end

  def show
    puts "АЙДИ"+request.parameters[:id_user]
    @user = User.find request.parameters[:id_user]
  end

  def id

  end

  private
  def user_params
    params.require(:user).permit(:email, :name, :pwd)
  end
end
