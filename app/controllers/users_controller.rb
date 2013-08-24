class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  def index

  end

  def new

  end

  def edit
  end

  def create
    user = User.create(params[:user])
  end
end
