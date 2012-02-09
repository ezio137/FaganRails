require 'test_helper'

class Financeiro::TransacoesControllerTest < ActionController::TestCase
  setup do
    @financeiro_transacao = financeiro_transacoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:financeiro_transacoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create financeiro_transacao" do
    assert_difference('Financeiro::Transacao.count') do
      post :create, financeiro_transacao: @financeiro_transacao.attributes
    end

    assert_redirected_to financeiro_transacao_path(assigns(:financeiro_transacao))
  end

  test "should show financeiro_transacao" do
    get :show, id: @financeiro_transacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @financeiro_transacao
    assert_response :success
  end

  test "should update financeiro_transacao" do
    put :update, id: @financeiro_transacao, financeiro_transacao: @financeiro_transacao.attributes
    assert_redirected_to financeiro_transacao_path(assigns(:financeiro_transacao))
  end

  test "should destroy financeiro_transacao" do
    assert_difference('Financeiro::Transacao.count', -1) do
      delete :destroy, id: @financeiro_transacao
    end

    assert_redirected_to financeiro_transacoes_path
  end
end
