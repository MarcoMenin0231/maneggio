require "application_system_test_case"

class IscrizionesTest < ApplicationSystemTestCase
  setup do
    @iscrizione = iscriziones(:one)
  end

  test "visiting the index" do
    visit iscriziones_url
    assert_selector "h1", text: "Iscriziones"
  end

  test "creating a Iscrizione" do
    visit iscriziones_url
    click_on "New Iscrizione"

    fill_in "Cellulare", with: @iscrizione.cellulare
    fill_in "Cognome", with: @iscrizione.cognome
    fill_in "Email", with: @iscrizione.email
    fill_in "Età", with: @iscrizione.età
    fill_in "Nome", with: @iscrizione.nome
    fill_in "Richiesta", with: @iscrizione.richiesta
    click_on "Create Iscrizione"

    assert_text "Iscrizione was successfully created"
    click_on "Back"
  end

  test "updating a Iscrizione" do
    visit iscriziones_url
    click_on "Edit", match: :first

    fill_in "Cellulare", with: @iscrizione.cellulare
    fill_in "Cognome", with: @iscrizione.cognome
    fill_in "Email", with: @iscrizione.email
    fill_in "Età", with: @iscrizione.età
    fill_in "Nome", with: @iscrizione.nome
    fill_in "Richiesta", with: @iscrizione.richiesta
    click_on "Update Iscrizione"

    assert_text "Iscrizione was successfully updated"
    click_on "Back"
  end

  test "destroying a Iscrizione" do
    visit iscriziones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Iscrizione was successfully destroyed"
  end
end
