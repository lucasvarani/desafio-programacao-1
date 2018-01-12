class UsersController < ApplicationController
  # before_action :set_user, only: [:show, :edit, :update, :destroy]



  # GET /users/new
  def new
    @user = User.new
  end


  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to logout_path, notice_user: 'User was successfully created.'
    else
      render :action => 'new'
    end
  end


  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit!
    end
end
