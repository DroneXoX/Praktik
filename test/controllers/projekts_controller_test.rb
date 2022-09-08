require "test_helper"

class ProjektsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projekt = projekts(:one)
  end

  test "should get index" do
    get projekts_url
    assert_response :success
  end

  test "should get new" do
    get new_projekt_url
    assert_response :success
  end

  test "should create projekt" do
    assert_difference("Projekt.count") do
      post projekts_url, params: { projekt: { beskrivning: @projekt.beskrivning, namn: @projekt.namn, status: @projekt.status, ägare: @projekt.ägare } }
    end

    assert_redirected_to projekt_url(Projekt.last)
  end

  test "should show projekt" do
    get projekt_url(@projekt)
    assert_response :success
  end

  test "should get edit" do
    get edit_projekt_url(@projekt)
    assert_response :success
  end

  test "should update projekt" do
    patch projekt_url(@projekt), params: { projekt: { beskrivning: @projekt.beskrivning, namn: @projekt.namn, status: @projekt.status, ägare: @projekt.ägare } }
    assert_redirected_to projekt_url(@projekt)
  end

  test "should destroy projekt" do
    assert_difference("Projekt.count", -1) do
      delete projekt_url(@projekt)
    end

    assert_redirected_to projekts_url
  end
end
