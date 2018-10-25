require "application_system_test_case"

class BicitaxistaAgremiacionsTest < ApplicationSystemTestCase
  setup do
    @bicitaxista_agremiacion = bicitaxista_agremiacions(:one)
  end

  test "visiting the index" do
    visit bicitaxista_agremiacions_url
    assert_selector "h1", text: "Bicitaxista Agremiacions"
  end

  test "creating a Bicitaxista agremiacion" do
    visit bicitaxista_agremiacions_url
    click_on "New Bicitaxista Agremiacion"

    fill_in "Id Agremiacion", with: @bicitaxista_agremiacion.id_agremiacion
    fill_in "Id Bicitaxista Agremiacion", with: @bicitaxista_agremiacion.id_bicitaxista_agremiacion
    fill_in "Id Usuario", with: @bicitaxista_agremiacion.id_usuario
    click_on "Create Bicitaxista agremiacion"

    assert_text "Bicitaxista agremiacion was successfully created"
    click_on "Back"
  end

  test "updating a Bicitaxista agremiacion" do
    visit bicitaxista_agremiacions_url
    click_on "Edit", match: :first

    fill_in "Id Agremiacion", with: @bicitaxista_agremiacion.id_agremiacion
    fill_in "Id Bicitaxista Agremiacion", with: @bicitaxista_agremiacion.id_bicitaxista_agremiacion
    fill_in "Id Usuario", with: @bicitaxista_agremiacion.id_usuario
    click_on "Update Bicitaxista agremiacion"

    assert_text "Bicitaxista agremiacion was successfully updated"
    click_on "Back"
  end

  test "destroying a Bicitaxista agremiacion" do
    visit bicitaxista_agremiacions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bicitaxista agremiacion was successfully destroyed"
  end
end
