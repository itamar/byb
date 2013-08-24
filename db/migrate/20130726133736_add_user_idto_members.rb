class AddUserIdtoMembers < ActiveRecord::Migration
  def change
    add_column :members, :user_id, :integer
    add_column :members, :account_id, :integer
  end
end
