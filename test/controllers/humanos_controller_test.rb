require 'test_helper'

class HumanosControllerTest < ActionController::TestCase
  setup do
    @humano = humanos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:humanos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create humano" do
    assert_difference('Humano.count') do
      post :create, humano: { hombre: @humano.hombre, mujer: @humano.mujer }
    end

    assert_redirected_to humano_path(assigns(:humano))
  end

  test "should show humano" do
    get :show, id: @humano
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @humano
    assert_response :success
  end

  test "should update humano" do
    patch :update, id: @humano, humano: { hombre: @humano.hombre, mujer: @humano.mujer }
    assert_redirected_to humano_path(assigns(:humano))
  end

  test "should destroy humano" do
    assert_difference('Humano.count', -1) do
      delete :destroy, id: @humano
    end

    assert_redirected_to humanos_path
  end
end
