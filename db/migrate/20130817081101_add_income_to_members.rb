class AddIncomeToMembers < ActiveRecord::Migration
  def change
    add_column :members, :income, :integer
    add_column :members, :add_income, :integer
  end
end
