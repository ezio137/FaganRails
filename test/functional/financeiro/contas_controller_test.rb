require 'test_helper'

class Financeiro::ContasControllerTest < ActionController::TestCase
  setup do
    @financeiro_conta = financeiro_contas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:financeiro_contas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create financeiro_conta" do
    assert_difference('Financeiro::Conta.count') do
      post :create, financeiro_conta: @financeiro_conta.attributes
    end

    assert_redirected_to financeiro_conta_path(assigns(:financeiro_conta))
  end

  test "should show financeiro_conta" do
    get :show, id: @financeiro_conta.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @financeiro_conta.to_param
    assert_response :success
  end

  test "should update financeiro_conta" do
    put :update, id: @financeiro_conta.to_param, financeiro_conta: @financeiro_conta.attributes
    assert_redirected_to financeiro_conta_path(assigns(:financeiro_conta))
  end

  test "should destroy financeiro_conta" do
    assert_difference('Financeiro::Conta.count', -1) do
      delete :destroy, id: @financeiro_conta.to_param
    end

    assert_redirected_to financeiro_contas_path
  end
end
