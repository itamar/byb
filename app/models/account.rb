class Account < ActiveRecord::Base
  attr_accessible :name

  has_many :keywords
  has_many :outcomes
  has_many :members
  has_one :user, class_name: 'User'
  has_one :outcome

end
