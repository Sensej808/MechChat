class AuthsController < ActionController::Base
  def create
    #@user = User.find_by email: auth_params[:email]
    #@user = User.where([:email, :pwd] auth_params[:email], pwd: auth_params[:pwd]).take
    #if (@user.nil?)
    #  render 'login'
    #else
    #  redirect_to "http://google.com", allow_other_host: true
    #end
  end

  def delete

  end
  def auth_params
    params.require(:auth).permit(:email, :pwd)
  end
end
