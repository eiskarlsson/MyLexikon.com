class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_my_variables

  # Force signout to prevent CSRF attacks
  def handle_unverified_request
    sign_out
    super
  end

  def set_my_variables
    @mbti_tests = MbtiTest.where(language: "bg").all
    if !current_user.nil?
      if !(Profile.where(:id => current_user.id).first.nil?)
        @profile = Profile.find(current_user.id)
      end
    end
  end

  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end


end

