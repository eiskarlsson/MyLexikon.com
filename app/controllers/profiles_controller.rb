class ProfilesController < ApplicationController
  def new
    @user = User.create( params[:user] )
  end

  def edit
  end

  def show
  end
end
