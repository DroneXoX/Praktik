require "test_helper"

class PraktikantersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @praktikanter = praktikanters(:one)
  end

  test "should get index" do
    get praktikanters_url
    assert_response :success
  end

  test "should get new" do
    get new_praktikanter_url
    assert_response :success
  end

  test "should create praktikanter" do
    assert_difference("Praktikanter.count") do
      post praktikanters_url, params: { praktikanter: { efternamn: @praktikanter.efternamn, email: @praktikanter.email, first_förnamn: @praktikanter.first_förnamn, linkedin: @praktikanter.linkedin, telefon: @praktikanter.telefon } }
    end

    assert_redirected_to praktikanter_url(Praktikanter.last)
  end

  test "should show praktikanter" do
    get praktikanter_url(@praktikanter)
    assert_response :success
  end

  test "should get edit" do
    get edit_praktikanter_url(@praktikanter)
    assert_response :success
  end

  test "should update praktikanter" do
    patch praktikanter_url(@praktikanter), params: { praktikanter: { efternamn: @praktikanter.efternamn, email: @praktikanter.email, first_förnamn: @praktikanter.first_förnamn, linkedin: @praktikanter.linkedin, telefon: @praktikanter.telefon } }
    assert_redirected_to praktikanter_url(@praktikanter)
  end

  test "should destroy praktikanter" do
    assert_difference("Praktikanter.count", -1) do
      delete praktikanter_url(@praktikanter)
    end

    assert_redirected_to praktikanters_url
  end
end
