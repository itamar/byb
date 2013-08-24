class CreateOutcomes < ActiveRecord::Migration
  def change
    create_table :outcomes do |t|
      t.integer :month
      t.integer :year
      t.integer :account_id
      t.integer :telephone
      t.integer :electricity
      t.integer :gas

      t.timestamps
    end
  end
end
