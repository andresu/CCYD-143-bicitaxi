require "application_system_test_case"

class ViajesTest < ApplicationSystemTestCase
  setup do
    @viaje = viajes(:one)
  end

  test "visiting the index" do
    visit viajes_url
    assert_selector "h1", text: "Viajes"
  end

  test "creating a Viaje" do
    visit viajes_url
    click_on "New Viaje"

    fill_in "Fecha Viaje", with: @viaje.fecha_viaje
    fill_in "Id Viaje", with: @viaje.id_viaje
    fill_in "Puntaje", with: @viaje.puntaje
    fill_in "Usuario Bicitaxista", with: @viaje.usuario_bicitaxista
    fill_in "Usuario Solicitante", with: @viaje.usuario_solicitante
    fill_in "Valor", with: @viaje.valor
    click_on "Create Viaje"

    assert_text "Viaje was successfully created"
    click_on "Back"
  end

  test "updating a Viaje" do
    visit viajes_url
    click_on "Edit", match: :first

    fill_in "Fecha Viaje", with: @viaje.fecha_viaje
    fill_in "Id Viaje", with: @viaje.id_viaje
    fill_in "Puntaje", with: @viaje.puntaje
    fill_in "Usuario Bicitaxista", with: @viaje.usuario_bicitaxista
    fill_in "Usuario Solicitante", with: @viaje.usuario_solicitante
    fill_in "Valor", with: @viaje.valor
    click_on "Update Viaje"

    assert_text "Viaje was successfully updated"
    click_on "Back"
  end

  test "destroying a Viaje" do
    visit viajes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Viaje was successfully destroyed"
  end
end
