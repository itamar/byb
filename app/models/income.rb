class Income < ActiveRecord::Base
  attr_accessible :amount, :member_id, :month, :year

  belongs_to :member
end
