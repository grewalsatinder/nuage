class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :email, :password))
     if @user.save
          # log the user in
          redirect_to root_path
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
