# encoding: utf-8
class KeywordsController < ApplicationController
  def index
    @keywords = current_user.account.keywords
  end

  def new
    @keyword = current_user.account.keywords.new
  end

  def create
    keyword = current_user.account.keywords.new(params[:keyword])
    if keyword.save
      flash[:success] = "מילת המפתח נוצרה בהצלחה"
    else
      flash[:error] = "אוופפפס, הייתה שגיאה. נסה שוב בבקשהץ"
    end
    redirect_to user_account_keywords_path
  end

  def check
    keyword = current_user.account.keywords.find(params[:id])
    keyword.update_attribute(:active, params[:checked])
    render nothing: true
  end

  def destroy
    keyword = current_user.account.keywords.find(params[:id])
    if keyword.destroy
      flash[:success] = "מילת המפתח נמחקה בהצלחה"
    else
      flash[:error] = "אוופפפס, הייתה שגיאה. נסה שוב בבקשהץ"
    end
    redirect_to user_account_keywords_path
  end
end
