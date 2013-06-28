class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "User account created!"
      render 'update'
    else
      flash.now[:error] = "An error occured please try again!"
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "User account updated successfully!"
      redirect_to @user
    else
      flash.now[:error] = "An error occured please try again!"
      render 'update'
    end
  end

  def index
    @users = User.all
  end


end

