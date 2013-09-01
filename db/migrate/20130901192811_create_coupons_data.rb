class CreateCouponsData < ActiveRecord::Migration
  def change
    create_table :coupons_data do |t|
      t.integer :month
      t.integer :coupon_amount
      t.integer :normal_amount

      t.timestamps
    end
  end
end
