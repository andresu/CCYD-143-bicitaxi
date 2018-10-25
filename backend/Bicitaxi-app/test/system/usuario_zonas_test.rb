require "application_system_test_case"

class UsuarioZonasTest < ApplicationSystemTestCase
  setup do
    @usuario_zona = usuario_zonas(:one)
  end

  test "visiting the index" do
    visit usuario_zonas_url
    assert_selector "h1", text: "Usuario Zonas"
  end

  test "creating a Usuario zona" do
    visit usuario_zonas_url
    click_on "New Usuario Zona"

    fill_in "Id Usuario", with: @usuario_zona.id_usuario
    fill_in "Id Usuario Zona", with: @usuario_zona.id_usuario_zona
    fill_in "Localidad Zona", with: @usuario_zona.localidad_zona
    click_on "Create Usuario zona"

    assert_text "Usuario zona was successfully created"
    click_on "Back"
  end

  test "updating a Usuario zona" do
    visit usuario_zonas_url
    click_on "Edit", match: :first

    fill_in "Id Usuario", with: @usuario_zona.id_usuario
    fill_in "Id Usuario Zona", with: @usuario_zona.id_usuario_zona
    fill_in "Localidad Zona", with: @usuario_zona.localidad_zona
    click_on "Update Usuario zona"

    assert_text "Usuario zona was successfully updated"
    click_on "Back"
  end

  test "destroying a Usuario zona" do
    visit usuario_zonas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Usuario zona was successfully destroyed"
  end
end
