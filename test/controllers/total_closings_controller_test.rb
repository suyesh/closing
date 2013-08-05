require 'test_helper'

class TotalClosingsControllerTest < ActionController::TestCase
  setup do
    @total_closing = total_closings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:total_closings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create total_closing" do
    assert_difference('TotalClosing.count') do
      post :create, total_closing: { Bill_Received: @total_closing.Bill_Received, Bill_paid: @total_closing.Bill_paid, Cash_In_Hand: @total_closing.Cash_In_Hand, Other_amount: @total_closing.Other_amount, Other_paid: @total_closing.Other_paid, Raj: @total_closing.Raj, Sunny_Phone: @total_closing.Sunny_Phone, Sunny_Total: @total_closing.Sunny_Total, TMZ_Phone: @total_closing.TMZ_Phone, TMZ_Total: @total_closing.TMZ_Total, Total_creditcard: @total_closing.Total_creditcard, Total_pin: @total_closing.Total_pin, Total_sale: @total_closing.Total_sale }
    end

    assert_redirected_to total_closing_path(assigns(:total_closing))
  end

  test "should show total_closing" do
    get :show, id: @total_closing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @total_closing
    assert_response :success
  end

  test "should update total_closing" do
    patch :update, id: @total_closing, total_closing: { Bill_Received: @total_closing.Bill_Received, Bill_paid: @total_closing.Bill_paid, Cash_In_Hand: @total_closing.Cash_In_Hand, Other_amount: @total_closing.Other_amount, Other_paid: @total_closing.Other_paid, Raj: @total_closing.Raj, Sunny_Phone: @total_closing.Sunny_Phone, Sunny_Total: @total_closing.Sunny_Total, TMZ_Phone: @total_closing.TMZ_Phone, TMZ_Total: @total_closing.TMZ_Total, Total_creditcard: @total_closing.Total_creditcard, Total_pin: @total_closing.Total_pin, Total_sale: @total_closing.Total_sale }
    assert_redirected_to total_closing_path(assigns(:total_closing))
  end

  test "should destroy total_closing" do
    assert_difference('TotalClosing.count', -1) do
      delete :destroy, id: @total_closing
    end

    assert_redirected_to total_closings_path
  end
end
