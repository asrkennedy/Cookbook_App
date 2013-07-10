class UsersController < ApplicationController
  load_and_authorize_resource

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      flash[:welcome] = "Thanks for registering! You can now access our site!"
      redirect_to recipes_path
    else
      render 'new'
    end
  end

end
