require "application_system_test_case"

class AgremiacionsTest < ApplicationSystemTestCase
  setup do
    @agremiacion = agremiacions(:one)
  end

  test "visiting the index" do
    visit agremiacions_url
    assert_selector "h1", text: "Agremiacions"
  end

  test "creating a Agremiacion" do
    visit agremiacions_url
    click_on "New Agremiacion"

    fill_in "Email", with: @agremiacion.email
    fill_in "Id Agremiacion", with: @agremiacion.id_agremiacion
    fill_in "Nombre Agremiacion", with: @agremiacion.nombre_agremiacion
    fill_in "Telefono", with: @agremiacion.telefono
    click_on "Create Agremiacion"

    assert_text "Agremiacion was successfully created"
    click_on "Back"
  end

  test "updating a Agremiacion" do
    visit agremiacions_url
    click_on "Edit", match: :first

    fill_in "Email", with: @agremiacion.email
    fill_in "Id Agremiacion", with: @agremiacion.id_agremiacion
    fill_in "Nombre Agremiacion", with: @agremiacion.nombre_agremiacion
    fill_in "Telefono", with: @agremiacion.telefono
    click_on "Update Agremiacion"

    assert_text "Agremiacion was successfully updated"
    click_on "Back"
  end

  test "destroying a Agremiacion" do
    visit agremiacions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agremiacion was successfully destroyed"
  end
end
