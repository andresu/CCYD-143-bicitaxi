require 'test_helper'

class ZonaLocalidadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zona_localidad = zona_localidads(:one)
  end

  test "should get index" do
    get zona_localidads_url
    assert_response :success
  end

  test "should get new" do
    get new_zona_localidad_url
    assert_response :success
  end

  test "should create zona_localidad" do
    assert_difference('ZonaLocalidad.count') do
      post zona_localidads_url, params: { zona_localidad: { id_zona_localidad: @zona_localidad.id_zona_localidad, localidad: @zona_localidad.localidad, zona: @zona_localidad.zona } }
    end

    assert_redirected_to zona_localidad_url(ZonaLocalidad.last)
  end

  test "should show zona_localidad" do
    get zona_localidad_url(@zona_localidad)
    assert_response :success
  end

  test "should get edit" do
    get edit_zona_localidad_url(@zona_localidad)
    assert_response :success
  end

  test "should update zona_localidad" do
    patch zona_localidad_url(@zona_localidad), params: { zona_localidad: { id_zona_localidad: @zona_localidad.id_zona_localidad, localidad: @zona_localidad.localidad, zona: @zona_localidad.zona } }
    assert_redirected_to zona_localidad_url(@zona_localidad)
  end

  test "should destroy zona_localidad" do
    assert_difference('ZonaLocalidad.count', -1) do
      delete zona_localidad_url(@zona_localidad)
    end

    assert_redirected_to zona_localidads_url
  end
end
