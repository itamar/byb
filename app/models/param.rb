class Param < ActiveRecord::Base
  attr_accessible :name, :outcome_category_id, :value, :param_datas_attributes
  belongs_to :outcome_category

  has_many :param_datas, class_name: 'ParamData'
  accepts_nested_attributes_for :param_datas
  
end
