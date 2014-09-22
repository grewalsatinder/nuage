class UsersController < ApplicationController
  def new
    @user = User.new  # using User model 
  end

  def index
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :email, :email_confirmation, :password, :password_confirmation))
     if @user.save
          # Handle a successful save.
          redirect_to login_path
     else
          render 'new'
     end
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end
end
