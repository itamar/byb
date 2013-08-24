class CreateParams < ActiveRecord::Migration
  def change
    create_table :params do |t|
      t.integer :outcome_category_id
      t.string :name
      t.integer :value

      t.timestamps
    end
  end
end
