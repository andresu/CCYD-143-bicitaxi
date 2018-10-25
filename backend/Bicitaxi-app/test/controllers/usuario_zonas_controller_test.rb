require 'test_helper'

class UsuarioZonasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario_zona = usuario_zonas(:one)
  end

  test "should get index" do
    get usuario_zonas_url
    assert_response :success
  end

  test "should get new" do
    get new_usuario_zona_url
    assert_response :success
  end

  test "should create usuario_zona" do
    assert_difference('UsuarioZona.count') do
      post usuario_zonas_url, params: { usuario_zona: { id_usuario: @usuario_zona.id_usuario, id_usuario_zona: @usuario_zona.id_usuario_zona, localidad_zona: @usuario_zona.localidad_zona } }
    end

    assert_redirected_to usuario_zona_url(UsuarioZona.last)
  end

  test "should show usuario_zona" do
    get usuario_zona_url(@usuario_zona)
    assert_response :success
  end

  test "should get edit" do
    get edit_usuario_zona_url(@usuario_zona)
    assert_response :success
  end

  test "should update usuario_zona" do
    patch usuario_zona_url(@usuario_zona), params: { usuario_zona: { id_usuario: @usuario_zona.id_usuario, id_usuario_zona: @usuario_zona.id_usuario_zona, localidad_zona: @usuario_zona.localidad_zona } }
    assert_redirected_to usuario_zona_url(@usuario_zona)
  end

  test "should destroy usuario_zona" do
    assert_difference('UsuarioZona.count', -1) do
      delete usuario_zona_url(@usuario_zona)
    end

    assert_redirected_to usuario_zonas_url
  end
end
