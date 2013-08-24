class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.datetime :date_of_birth
      t.string :name
      t.string :profession
      t.string :gender

      t.timestamps
    end
  end
end
