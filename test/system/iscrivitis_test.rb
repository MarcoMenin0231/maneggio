require "application_system_test_case"

class IscrivitisTest < ApplicationSystemTestCase
  setup do
    @iscriviti = iscrivitis(:one)
  end

  test "visiting the index" do
    visit iscrivitis_url
    assert_selector "h1", text: "Iscrivitis"
  end

  test "creating a Iscriviti" do
    visit iscrivitis_url
    click_on "New Iscriviti"

    fill_in "Cellulare", with: @iscriviti.cellulare
    fill_in "Cognome", with: @iscriviti.cognome
    fill_in "Email", with: @iscriviti.email
    fill_in "Età", with: @iscriviti.età
    fill_in "Nome", with: @iscriviti.nome
    fill_in "Richiesta", with: @iscriviti.richiesta
    click_on "Create Iscriviti"

    assert_text "Iscriviti was successfully created"
    click_on "Back"
  end

  test "updating a Iscriviti" do
    visit iscrivitis_url
    click_on "Edit", match: :first

    fill_in "Cellulare", with: @iscriviti.cellulare
    fill_in "Cognome", with: @iscriviti.cognome
    fill_in "Email", with: @iscriviti.email
    fill_in "Età", with: @iscriviti.età
    fill_in "Nome", with: @iscriviti.nome
    fill_in "Richiesta", with: @iscriviti.richiesta
    click_on "Update Iscriviti"

    assert_text "Iscriviti was successfully updated"
    click_on "Back"
  end

  test "destroying a Iscriviti" do
    visit iscrivitis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Iscriviti was successfully destroyed"
  end
end
