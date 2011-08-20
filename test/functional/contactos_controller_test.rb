require 'test_helper'

class ContactosControllerTest < ActionController::TestCase
  setup do
    @contacto = contactos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contactos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contacto" do
    assert_difference('Contacto.count') do
      post :create, :contacto => @contacto.attributes
    end

    assert_redirected_to contacto_path(assigns(:contacto))
  end

  test "should show contacto" do
    get :show, :id => @contacto.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @contacto.to_param
    assert_response :success
  end

  test "should update contacto" do
    put :update, :id => @contacto.to_param, :contacto => @contacto.attributes
    assert_redirected_to contacto_path(assigns(:contacto))
  end

  test "should destroy contacto" do
    assert_difference('Contacto.count', -1) do
      delete :destroy, :id => @contacto.to_param
    end

    assert_redirected_to contactos_path
  end
end
