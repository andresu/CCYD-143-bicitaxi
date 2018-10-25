require "application_system_test_case"

class ZonaLocalidadsTest < ApplicationSystemTestCase
  setup do
    @zona_localidad = zona_localidads(:one)
  end

  test "visiting the index" do
    visit zona_localidads_url
    assert_selector "h1", text: "Zona Localidads"
  end

  test "creating a Zona localidad" do
    visit zona_localidads_url
    click_on "New Zona Localidad"

    fill_in "Id Zona Localidad", with: @zona_localidad.id_zona_localidad
    fill_in "Localidad", with: @zona_localidad.localidad
    fill_in "Zona", with: @zona_localidad.zona
    click_on "Create Zona localidad"

    assert_text "Zona localidad was successfully created"
    click_on "Back"
  end

  test "updating a Zona localidad" do
    visit zona_localidads_url
    click_on "Edit", match: :first

    fill_in "Id Zona Localidad", with: @zona_localidad.id_zona_localidad
    fill_in "Localidad", with: @zona_localidad.localidad
    fill_in "Zona", with: @zona_localidad.zona
    click_on "Update Zona localidad"

    assert_text "Zona localidad was successfully updated"
    click_on "Back"
  end

  test "destroying a Zona localidad" do
    visit zona_localidads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Zona localidad was successfully destroyed"
  end
end
