require "application_system_test_case"

class PraktikantersTest < ApplicationSystemTestCase
  setup do
    @praktikanter = praktikanters(:one)
  end

  test "visiting the index" do
    visit praktikanters_url
    assert_selector "h1", text: "Praktikanters"
  end

  test "should create praktikanter" do
    visit praktikanters_url
    click_on "New praktikanter"

    fill_in "Efternamn", with: @praktikanter.efternamn
    fill_in "Email", with: @praktikanter.email
    fill_in "First förnamn", with: @praktikanter.first_förnamn
    fill_in "Linkedin", with: @praktikanter.linkedin
    fill_in "Telefon", with: @praktikanter.telefon
    click_on "Create Praktikanter"

    assert_text "Praktikanter was successfully created"
    click_on "Back"
  end

  test "should update Praktikanter" do
    visit praktikanter_url(@praktikanter)
    click_on "Edit this praktikanter", match: :first

    fill_in "Efternamn", with: @praktikanter.efternamn
    fill_in "Email", with: @praktikanter.email
    fill_in "First förnamn", with: @praktikanter.first_förnamn
    fill_in "Linkedin", with: @praktikanter.linkedin
    fill_in "Telefon", with: @praktikanter.telefon
    click_on "Update Praktikanter"

    assert_text "Praktikanter was successfully updated"
    click_on "Back"
  end

  test "should destroy Praktikanter" do
    visit praktikanter_url(@praktikanter)
    click_on "Destroy this praktikanter", match: :first

    assert_text "Praktikanter was successfully destroyed"
  end
end
