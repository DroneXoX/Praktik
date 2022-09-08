require "application_system_test_case"

class ProjektsTest < ApplicationSystemTestCase
  setup do
    @projekt = projekts(:one)
  end

  test "visiting the index" do
    visit projekts_url
    assert_selector "h1", text: "Projekts"
  end

  test "should create projekt" do
    visit projekts_url
    click_on "New projekt"

    fill_in "Beskrivning", with: @projekt.beskrivning
    fill_in "Namn", with: @projekt.namn
    fill_in "Status", with: @projekt.status
    fill_in "ägare", with: @projekt.ägare
    click_on "Create Projekt"

    assert_text "Projekt was successfully created"
    click_on "Back"
  end

  test "should update Projekt" do
    visit projekt_url(@projekt)
    click_on "Edit this projekt", match: :first

    fill_in "Beskrivning", with: @projekt.beskrivning
    fill_in "Namn", with: @projekt.namn
    fill_in "Status", with: @projekt.status
    fill_in "ägare", with: @projekt.ägare
    click_on "Update Projekt"

    assert_text "Projekt was successfully updated"
    click_on "Back"
  end

  test "should destroy Projekt" do
    visit projekt_url(@projekt)
    click_on "Destroy this projekt", match: :first

    assert_text "Projekt was successfully destroyed"
  end
end
