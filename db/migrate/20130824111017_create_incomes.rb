class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.string :amount
      t.string :year
      t.string :month
      t.integer :member_id

      t.timestamps
    end
  end
end
