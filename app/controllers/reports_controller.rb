class ReportsController < ApplicationController

  def show
    @params = current_user.account.outcomes.collect{|o| oc.outcome_categories.collect{|oc| oc.params } }.flatten
  end

end
