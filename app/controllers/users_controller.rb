class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "You are registered"
      redirect_to root_path

    else
      render 'new'

    end
  end

  # def edit
  # end
  #
  # def update
  # end
  #
  # def destroy
  # end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
