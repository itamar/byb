require 'test_helper'

class CouponsDataControllerTest < ActionController::TestCase
  setup do
    @coupons_datum = coupons_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coupons_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coupons_datum" do
    assert_difference('CouponsDatum.count') do
      post :create, coupons_datum: { coupon_amount: @coupons_datum.coupon_amount, month: @coupons_datum.month, normal_amount: @coupons_datum.normal_amount }
    end

    assert_redirected_to coupons_datum_path(assigns(:coupons_datum))
  end

  test "should show coupons_datum" do
    get :show, id: @coupons_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coupons_datum
    assert_response :success
  end

  test "should update coupons_datum" do
    put :update, id: @coupons_datum, coupons_datum: { coupon_amount: @coupons_datum.coupon_amount, month: @coupons_datum.month, normal_amount: @coupons_datum.normal_amount }
    assert_redirected_to coupons_datum_path(assigns(:coupons_datum))
  end

  test "should destroy coupons_datum" do
    assert_difference('CouponsDatum.count', -1) do
      delete :destroy, id: @coupons_datum
    end

    assert_redirected_to coupons_data_path
  end
end
