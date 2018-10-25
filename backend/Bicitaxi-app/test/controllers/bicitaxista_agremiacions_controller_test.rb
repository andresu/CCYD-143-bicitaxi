require 'test_helper'

class BicitaxistaAgremiacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bicitaxista_agremiacion = bicitaxista_agremiacions(:one)
  end

  test "should get index" do
    get bicitaxista_agremiacions_url
    assert_response :success
  end

  test "should get new" do
    get new_bicitaxista_agremiacion_url
    assert_response :success
  end

  test "should create bicitaxista_agremiacion" do
    assert_difference('BicitaxistaAgremiacion.count') do
      post bicitaxista_agremiacions_url, params: { bicitaxista_agremiacion: { id_agremiacion: @bicitaxista_agremiacion.id_agremiacion, id_bicitaxista_agremiacion: @bicitaxista_agremiacion.id_bicitaxista_agremiacion, id_usuario: @bicitaxista_agremiacion.id_usuario } }
    end

    assert_redirected_to bicitaxista_agremiacion_url(BicitaxistaAgremiacion.last)
  end

  test "should show bicitaxista_agremiacion" do
    get bicitaxista_agremiacion_url(@bicitaxista_agremiacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_bicitaxista_agremiacion_url(@bicitaxista_agremiacion)
    assert_response :success
  end

  test "should update bicitaxista_agremiacion" do
    patch bicitaxista_agremiacion_url(@bicitaxista_agremiacion), params: { bicitaxista_agremiacion: { id_agremiacion: @bicitaxista_agremiacion.id_agremiacion, id_bicitaxista_agremiacion: @bicitaxista_agremiacion.id_bicitaxista_agremiacion, id_usuario: @bicitaxista_agremiacion.id_usuario } }
    assert_redirected_to bicitaxista_agremiacion_url(@bicitaxista_agremiacion)
  end

  test "should destroy bicitaxista_agremiacion" do
    assert_difference('BicitaxistaAgremiacion.count', -1) do
      delete bicitaxista_agremiacion_url(@bicitaxista_agremiacion)
    end

    assert_redirected_to bicitaxista_agremiacions_url
  end
end
