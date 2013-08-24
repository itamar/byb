class Param < ActiveRecord::Base
  attr_accessible :name, :outcome_category_id, :value
  belongs_to :outcome_category

  has_many :param_datas, class_name: 'ParamData'
  
end
