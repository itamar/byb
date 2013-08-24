class Outcome < ActiveRecord::Base
  attr_accessible :account_id, :electricity, :gas, :month, :telephone, :year

  belongs_to :account
  has_many :outcome_categories
end
