# encoding: utf-8
class MembersController < ApplicationController

  def index
    @members = current_user.account.members
  end

  def new
    @member = current_user.account.members.new
  end

  def edit
    @member = current_user.account.members.find(params[:id])
  end

  def update
    member = current_user.account.members.find(params[:id])
    if member.update_attributes(params[:member])
      flash[:success] = "המשתמש עודכן בהצלחה"
    else
      flash[:error] = "אוופפפס, הייתה שגיאה. נסה שוב בבקשהץ"
    end
    redirect_to user_account_members_path
  end

  def create
    member = current_user.account.members.new(params[:member])
    if member.save
      flash[:success] = "המשתמש נוצר בהצלחה"
    else
      flash[:error] = "אוופפפס, הייתה שגיאה. נסה שוב בבקשהץ"
    end
    redirect_to user_account_members_path
  end

end
