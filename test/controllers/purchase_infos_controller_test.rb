require 'test_helper'

class PurchaseInfosControllerTest < ActionController::TestCase
  setup do
    @purchase_info = purchase_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:purchase_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create purchase_info" do
    assert_difference('PurchaseInfo.count') do
      post :create, purchase_info: { item_description: @purchase_info.item_description, item_price: @purchase_info.item_price, merchant_address: @purchase_info.merchant_address, merchant_name: @purchase_info.merchant_name, purchase_count: @purchase_info.purchase_count, purchaser_name: @purchase_info.purchaser_name }
    end

    assert_redirected_to purchase_info_path(assigns(:purchase_info))
  end

  test "should show purchase_info" do
    get :show, id: @purchase_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @purchase_info
    assert_response :success
  end

  test "should update purchase_info" do
    patch :update, id: @purchase_info, purchase_info: { item_description: @purchase_info.item_description, item_price: @purchase_info.item_price, merchant_address: @purchase_info.merchant_address, merchant_name: @purchase_info.merchant_name, purchase_count: @purchase_info.purchase_count, purchaser_name: @purchase_info.purchaser_name }
    assert_redirected_to purchase_info_path(assigns(:purchase_info))
  end

  test "should destroy purchase_info" do
    assert_difference('PurchaseInfo.count', -1) do
      delete :destroy, id: @purchase_info
    end

    assert_redirected_to purchase_infos_path
  end
end
