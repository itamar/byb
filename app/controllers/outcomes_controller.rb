class OutcomesController < ApplicationController

  def show
    @outcome = current_user.account.outcome
  end
end
