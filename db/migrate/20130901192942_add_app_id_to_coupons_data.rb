class AddAppIdToCouponsData < ActiveRecord::Migration
  def change
    add_column :coupons_data, :account_id, :integer
  end
end
