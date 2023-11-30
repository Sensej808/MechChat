class AuthsController < ActionController::Base
  def create
    @user = User.where(:email => auth_params[:email], :pwd => auth_params[:pwd]).take
    if (@user.nil?)
      render 'login'
    else
      session[:id] = @user[:id]
      #render "users/profiles"
      redirect_to "http://google.com", allow_other_host: true
      puts session[:id]
    end
  end

  def delete

  end
  def auth_params
    params.require(:auth).permit(:email, :pwd)
  end
end
