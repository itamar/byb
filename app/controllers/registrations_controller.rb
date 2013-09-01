# encoding: utf-8
class RegistrationsController < Devise::RegistrationsController
  
  after_filter :create_outcomes , only: [:create]

  def new
    super
  end

  def create
    super
  end

  def update
    super
  end

  def create_outcomes
  end
end 