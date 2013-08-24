class OutcomeCategory < ActiveRecord::Base
  attr_accessible :name, :outcome_id, :params_attributes
  belongs_to :outcome
  has_many :params
  accepts_nested_attributes_for :params
end
