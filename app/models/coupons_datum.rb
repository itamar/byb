class CouponsDatum < ActiveRecord::Base
  attr_accessible :coupon_amount, :month, :normal_amount, :app_id
  belongs_to :app
end
