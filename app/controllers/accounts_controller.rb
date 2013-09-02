class AccountsController < ApplicationController
  def new
  end

  def edit
  end

  def index
    
  end

  def report
    @coupons_data = current_user.account.coupons_data.all
  end
end
