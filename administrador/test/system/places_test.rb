require "application_system_test_case"

class PlacesTest < ApplicationSystemTestCase
  setup do
    @place = places(:one)
  end

  test "visiting the index" do
    visit places_url
    assert_selector "h1", text: "Places"
  end

  test "creating a Place" do
    visit places_url
    click_on "New Place"

    fill_in "Aceptado", with: @place.aceptado
    fill_in "Categoria", with: @place.categoria
    fill_in "Clima", with: @place.clima
    fill_in "Datos", with: @place.datos
    fill_in "Descripcion", with: @place.descripcion
    fill_in "Foto", with: @place.foto
    fill_in "Nombre", with: @place.nombre
    fill_in "Provincia", with: @place.provincia
    fill_in "Tarifa", with: @place.tarifa
    fill_in "Ubicacion", with: @place.ubicacion
    click_on "Create Place"

    assert_text "Place was successfully created"
    click_on "Back"
  end

  test "updating a Place" do
    visit places_url
    click_on "Edit", match: :first

    fill_in "Aceptado", with: @place.aceptado
    fill_in "Categoria", with: @place.categoria
    fill_in "Clima", with: @place.clima
    fill_in "Datos", with: @place.datos
    fill_in "Descripcion", with: @place.descripcion
    fill_in "Foto", with: @place.foto
    fill_in "Nombre", with: @place.nombre
    fill_in "Provincia", with: @place.provincia
    fill_in "Tarifa", with: @place.tarifa
    fill_in "Ubicacion", with: @place.ubicacion
    click_on "Update Place"

    assert_text "Place was successfully updated"
    click_on "Back"
  end

  test "destroying a Place" do
    visit places_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Place was successfully destroyed"
  end
end
