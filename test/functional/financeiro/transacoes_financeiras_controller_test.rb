require 'test_helper'

class TransacoesFinanceirasControllerTest < ActionController::TestCase
  setup do
    @transacao_financeira = transacoes_financeiras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transacoes_financeiras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transacao_financeira" do
    assert_difference('Transacao.count') do
      post :create, :transacao_financeira => @transacao_financeira.attributes
    end

    assert_redirected_to transacao_financeira_path(assigns(:transacao_financeira))
  end

  test "should show transacao_financeira" do
    get :show, :id => @transacao_financeira
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @transacao_financeira
    assert_response :success
  end

  test "should update transacao_financeira" do
    put :update, :id => @transacao_financeira, :transacao_financeira => @transacao_financeira.attributes
    assert_redirected_to transacao_financeira_path(assigns(:transacao_financeira))
  end

  test "should destroy transacao_financeira" do
    assert_difference('Transacao.count', -1) do
      delete :destroy, :id => @transacao_financeira
    end

    assert_redirected_to transacoes_financeiras_path
  end
end
