# encoding: utf-8
class ParamsController < ApplicationController
  def create
  end

  def edit
    @outcome_category = current_user.account.outcome.outcome_categories.find(params[:outcome_category_id])
    @param = @outcome_category.params.find(params[:id])
  end

  def update
    @outcome_category = current_user.account.outcome.outcome_categories.find(params[:outcome_category_id])
    @param = @outcome_category.params.find(params[:id])
    if @param.update_attributes(params[:param])
      flash[:success] = "העדכון בוצע בהצלחה"
    else
      flash[:error] = "אוופפפס, הייתה שגיאה. נסה שוב בבקשהץ"
    end
    redirect_to :back
  end

  def report
    @outcome_category = current_user.account.outcome.outcome_categories.find(params[:outcome_category_id])
    @param = @outcome_category.params.find(params[:id])
    
  end

end
