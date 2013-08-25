# encoding: utf-8
class OutcomeCategoriesController < ApplicationController

  def new
    @outcome_category = current_user.account.outcome.outcome_categories.new
    1.times {@outcome_category.params.build}
  end

  def create
    outcome_category = current_user.account.outcome.outcome_categories.create(params[:outcome_category])
    if outcome_category.save
      flash[:success] = "קטגוריה חדשה נוצר בהצלחה"
    else
      flash[:error] = "אוופפפס, הייתה שגיאה. נסה שוב בבקשהץ"
    end
    redirect_to user_account_outcome_path(current_user)
  end

  def edit
    @outcome_category = current_user.account.outcome.outcome_categories.find(params[:id])
  end

  def update
    outcome_category = current_user.account.outcome.outcome_categories.find(params[:id])
    if outcome_category.update_attributes(params[:outcome_category])
      flash[:success] = "הקטגוריה עודכנה בהצלחה"
    else
      flash[:error] = "אוופפפס, הייתה שגיאה. נסה שוב בבקשהץ"
    end
    redirect_to user_account_outcome_path(current_user)
  end

end
