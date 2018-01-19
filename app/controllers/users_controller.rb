class UsersController < ApplicationController
  def index
    # Show all posts
    @users = User.all
  end

  def show
    # Pass in ID from URL
    @users = User.find(params[:id])
  end

  def new
    @users = User.new
  end

  def create
    # Create new user
    # render plain: params[:post].inspect
    @users = User.new(user_params)
    # @user.user_id = current_user.id
    if @users.save
      redirect_to @users
    else
      # If there is an error redirect to new view
      render 'new'
    end
  end
  
  def destroy
    @users = User.find(params[:id])
    @users.destroy

    redirect_to users_path
  end

  private 
  
  # Keep URLs safe by only permitting certain
  # parameters
  def user_params
    params.require(:user).permit(:username, :email)
  end

end
