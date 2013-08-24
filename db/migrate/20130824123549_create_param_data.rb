class CreateParamData < ActiveRecord::Migration
  def change
    create_table :param_data do |t|
      t.integer :month
      t.integer :param_id
      t.integer :amount

      t.timestamps
    end
  end
end
