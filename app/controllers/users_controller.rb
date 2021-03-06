class UsersController < ApplicationController
  load_resource
  def index
    @users = User.find(:all)
  end

  def show
    @user = User.find(params[:id])

  end

  
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = 'A new user created successfully.'
      redirect_to @user
    else
      flash[:error] = 'An error occurred please try again!'
      redirect_to users_path
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = 'Profile updated'
      redirect_to users_path
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    if current_user == (@user)
      flash[:error] = "Admin suicide warning: Can't delete yourself."
    else
      @user.destroy
      flash[:notice] = 'User deleted'
      redirect_to users_path
    end
  end

  def checkname
    if User.where('user_name = ?', params[:user]).count == 0
      render :nothing => true, :status => 200
    else
      render :nothing => true, :status => 409
    end
    return
  end
end