class Member < ActiveRecord::Base
  attr_accessible :name, :profession, :date_of_birth, :gender, :income, :add_income, :incomes_attributes

  belongs_to :user
  belongs_to :account

  has_many :incomes

  accepts_nested_attributes_for :incomes

  def income
    incomes.to_a.sum{|a| a.amount.to_i }
  end
end
