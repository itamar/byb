class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(resource)
    if @user and @user.sign_in_count == 1
      '/static/after_signup?show_pre=true'
    else
      '/static/after_signup?other=true'
    end
  end

  def after_sign_up_path_for(resource)
  end  

end
