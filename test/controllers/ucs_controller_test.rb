require 'test_helper'

class UcsControllerTest < ActionController::TestCase
  setup do
    @uc = ucs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ucs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uc" do
    assert_difference('Uc.count') do
      post :create, uc: { name: @uc.name }
    end

    assert_redirected_to uc_path(assigns(:uc))
  end

  test "should show uc" do
    get :show, id: @uc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uc
    assert_response :success
  end

  test "should update uc" do
    patch :update, id: @uc, uc: { name: @uc.name }
    assert_redirected_to uc_path(assigns(:uc))
  end

  test "should destroy uc" do
    assert_difference('Uc.count', -1) do
      delete :destroy, id: @uc
    end

    assert_redirected_to ucs_path
  end
end
