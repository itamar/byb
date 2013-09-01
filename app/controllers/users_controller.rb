class UsersController < ApplicationController
  before_filter :authenticate_user!

  after_filter :create_outcomes , only: [:create]
  
  def index

  end

  def new

  end

  def edit
  end

  def create
    @user = User.create(params[:user])
  end


end
