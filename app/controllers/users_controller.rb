class UsersController < ActionController::Base
  def create
    @user = User.create(user_params)
    if @user.errors.empty?
      redirect_to "http://google.com", allow_other_host: true
    else
      render 'new'
    end
  end

  def delete

  end

  def edit

  end

  def show

  end

  private
  def user_params
    params.require(:user).permit(:email, :name, :pwd)
  end
end
