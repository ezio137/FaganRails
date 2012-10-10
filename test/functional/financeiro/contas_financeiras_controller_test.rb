require 'test_helper'

class ContasFinanceirasControllerTest < ActionController::TestCase
  setup do
    @conta_financeira = contas_financeiras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contas_financeiras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conta_financeira" do
    assert_difference('ContaFinanceira.count') do
      post :create, :conta_financeira => @conta_financeira.attributes
    end

    assert_redirected_to conta_financeira_path(assigns(:conta_financeira))
  end

  test "should show conta_financeira" do
    get :show, :id => @conta_financeira.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @conta_financeira.to_param
    assert_response :success
  end

  test "should update conta_financeira" do
    put :update, :id => @conta_financeira.to_param, :conta_financeira => @conta_financeira.attributes
    assert_redirected_to conta_financeira_path(assigns(:conta_financeira))
  end

  test "should destroy conta_financeira" do
    assert_difference('ContaFinanceira.count', -1) do
      delete :destroy, :id => @conta_financeira.to_param
    end

    assert_redirected_to contas_financeiras_path
  end
end
