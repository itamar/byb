class Member < ActiveRecord::Base
  attr_accessible :name, :profession, :date_of_birth, :gender, :income, :add_income

  belongs_to :user
  belongs_to :account

  has_many :incomes
end
