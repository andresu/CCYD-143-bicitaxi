require 'test_helper'

class AgremiacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agremiacion = agremiacions(:one)
  end

  test "should get index" do
    get agremiacions_url
    assert_response :success
  end

  test "should get new" do
    get new_agremiacion_url
    assert_response :success
  end

  test "should create agremiacion" do
    assert_difference('Agremiacion.count') do
      post agremiacions_url, params: { agremiacion: { email: @agremiacion.email, id_agremiacion: @agremiacion.id_agremiacion, nombre_agremiacion: @agremiacion.nombre_agremiacion, telefono: @agremiacion.telefono } }
    end

    assert_redirected_to agremiacion_url(Agremiacion.last)
  end

  test "should show agremiacion" do
    get agremiacion_url(@agremiacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_agremiacion_url(@agremiacion)
    assert_response :success
  end

  test "should update agremiacion" do
    patch agremiacion_url(@agremiacion), params: { agremiacion: { email: @agremiacion.email, id_agremiacion: @agremiacion.id_agremiacion, nombre_agremiacion: @agremiacion.nombre_agremiacion, telefono: @agremiacion.telefono } }
    assert_redirected_to agremiacion_url(@agremiacion)
  end

  test "should destroy agremiacion" do
    assert_difference('Agremiacion.count', -1) do
      delete agremiacion_url(@agremiacion)
    end

    assert_redirected_to agremiacions_url
  end
end
