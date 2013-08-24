class ParamData < ActiveRecord::Base
  attr_accessible :amount, :month, :param_id

  belongs_to :param
end
