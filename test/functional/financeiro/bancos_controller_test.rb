require 'test_helper'

class Financeiro::BancosControllerTest < ActionController::TestCase
  setup do
    @financeiro_banco = financeiro_bancos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:financeiro_bancos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create financeiro_banco" do
    assert_difference('Financeiro::Banco.count') do
      post :create, financeiro_banco: @financeiro_banco.attributes
    end

    assert_redirected_to financeiro_banco_path(assigns(:financeiro_banco))
  end

  test "should show financeiro_banco" do
    get :show, id: @financeiro_banco.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @financeiro_banco.to_param
    assert_response :success
  end

  test "should update financeiro_banco" do
    put :update, id: @financeiro_banco.to_param, financeiro_banco: @financeiro_banco.attributes
    assert_redirected_to financeiro_banco_path(assigns(:financeiro_banco))
  end

  test "should destroy financeiro_banco" do
    assert_difference('Financeiro::Banco.count', -1) do
      delete :destroy, id: @financeiro_banco.to_param
    end

    assert_redirected_to financeiro_bancos_path
  end
end
