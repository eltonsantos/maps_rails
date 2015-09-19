require 'test_helper'

class LocalizacoesControllerTest < ActionController::TestCase
  setup do
    @localizacao = localizacoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:localizacoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create localizacao" do
    assert_difference('Localizacao.count') do
      post :create, localizacao: { latitude: @localizacao.latitude, longitude: @localizacao.longitude, nome: @localizacao.nome }
    end

    assert_redirected_to localizacao_path(assigns(:localizacao))
  end

  test "should show localizacao" do
    get :show, id: @localizacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @localizacao
    assert_response :success
  end

  test "should update localizacao" do
    patch :update, id: @localizacao, localizacao: { latitude: @localizacao.latitude, longitude: @localizacao.longitude, nome: @localizacao.nome }
    assert_redirected_to localizacao_path(assigns(:localizacao))
  end

  test "should destroy localizacao" do
    assert_difference('Localizacao.count', -1) do
      delete :destroy, id: @localizacao
    end

    assert_redirected_to localizacoes_path
  end
end
