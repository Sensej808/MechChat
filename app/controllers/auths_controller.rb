class AuthsController < ApplicationController
  def create
    @user = User.find_by(email: auth_params[:email], pwd: auth_params[:pwd])

    if @user.nil?
      flash.now[:alert] = 'Неправильные email или пароль'
      render 'login', status: :unprocessable_entity
    else
      session[:id] = @user.id
      redirect_to controller: :users, action: :show, id_user: session[:id]
      puts session[:id]
    end
  end

  def delete
  
  end

  private

  def auth_params
    params.require(:auth).permit(:email, :pwd)
  end
end
