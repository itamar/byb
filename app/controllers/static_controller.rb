class StaticController < ApplicationController
  before_filter :authenticate_user!
  def dashboard
    
  end

  def after_signup

  end
end
