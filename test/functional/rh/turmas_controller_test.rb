require 'test_helper'

class Rh::TurmasControllerTest < ActionController::TestCase
  setup do
    @rh_turma = rh_turmas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rh_turmas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rh_turma" do
    assert_difference('Rh::Turma.count') do
      post :create, rh_turma: @rh_turma.attributes
    end

    assert_redirected_to rh_turma_path(assigns(:rh_turma))
  end

  test "should show rh_turma" do
    get :show, id: @rh_turma.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rh_turma.to_param
    assert_response :success
  end

  test "should update rh_turma" do
    put :update, id: @rh_turma.to_param, rh_turma: @rh_turma.attributes
    assert_redirected_to rh_turma_path(assigns(:rh_turma))
  end

  test "should destroy rh_turma" do
    assert_difference('Rh::Turma.count', -1) do
      delete :destroy, id: @rh_turma.to_param
    end

    assert_redirected_to rh_turmas_path
  end
end
