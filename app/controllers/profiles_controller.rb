class ProfilesController < ApplicationController
  def new
    if current_user
      @user = User.create( params[:user] )
      @profile = Profile.new
    else
      redirect_to new_user_session_path, notice: 'You are not logged in.'
    end

  end

  def edit
  end

  def show
  end
end
