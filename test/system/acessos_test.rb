require "application_system_test_case"

class AcessosTest < ApplicationSystemTestCase
  setup do
    @acesso = acessos(:one)
  end

  test "visiting the index" do
    visit acessos_url
    assert_selector "h1", text: "Acessos"
  end

  test "should create acesso" do
    visit acessos_url
    click_on "New acesso"

    fill_in "Nivel", with: @acesso.nivel
    click_on "Create Acesso"

    assert_text "Acesso was successfully created"
    click_on "Back"
  end

  test "should update Acesso" do
    visit acesso_url(@acesso)
    click_on "Edit this acesso", match: :first

    fill_in "Nivel", with: @acesso.nivel
    click_on "Update Acesso"

    assert_text "Acesso was successfully updated"
    click_on "Back"
  end

  test "should destroy Acesso" do
    visit acesso_url(@acesso)
    click_on "Destroy this acesso", match: :first

    assert_text "Acesso was successfully destroyed"
  end
end
