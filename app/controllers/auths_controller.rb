class AuthsController < ActionController::Base
  def create
    @user = User.where(:email => auth_params[:email], :pwd => auth_params[:pwd]).take
    if (@user.nil?)
      render 'login'
    else
      session[:id] = @user[:id]
      redirect_to controller: :users, action: :show, id_user: session[:id]
      puts session[:id]
    end
  end

  def delete

  end
  def auth_params
    params.require(:auth).permit(:email, :pwd)
  end
end
