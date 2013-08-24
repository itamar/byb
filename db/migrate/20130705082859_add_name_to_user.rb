class AddNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :account_id, :integer
    add_column :users, :admin, :boolean
    add_column :users, :profession, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :gender, :string
  end
end
