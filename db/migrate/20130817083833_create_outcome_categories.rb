class CreateOutcomeCategories < ActiveRecord::Migration
  def change
    create_table :outcome_categories do |t|
      t.string :name
      t.integer :outcome_id

      t.timestamps
    end
  end
end
