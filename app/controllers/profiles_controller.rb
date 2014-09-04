class ProfilesController < ApplicationController
  before_filter :authenticate_user!,
                only: [:edit, :update, :destroy]


  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @profiles }
    end
  end

  def new
    if current_user
      @user = User.create( params[:user] )
      @profile = Profile.new
    else
      redirect_to new_user_session_path, notice: 'You are not logged in.'
    end

  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def show
    @user = current_user
    @profile = Profile.find(params[:id])
  end

  # PUT /profiles/1
  # PUT /profiles/1.json
  def update
    @profile = Profile.find(params[:id])
    respond_to do |format|
      if @profile.update_attributes(params[:profile])
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end

  end

  def create
    @profile = Profile.new(params[:profile])

    respond_to do |format|
      if @profile.save
        #profile_show_path(:id => @profile.id)
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render json: @profile, status: :created, location: @profile }
      else
        format.html { render action: "new" }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy

    respond_to do |format|
      format.html { redirect_to profiles_url }
      format.json { head :no_content }
    end
  end
end
