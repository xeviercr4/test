require "test_helper"

class LanguageRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @language_role = language_roles(:one)
  end

  test "should get index" do
    get language_roles_url
    assert_response :success
  end

  test "should get new" do
    get new_language_role_url
    assert_response :success
  end

  test "should create language_role" do
    assert_difference("LanguageRole.count") do
      post language_roles_url, params: { language_role: { language_role: @language_role.language_role } }
    end

    assert_redirected_to language_role_url(LanguageRole.last)
  end

  test "should show language_role" do
    get language_role_url(@language_role)
    assert_response :success
  end

  test "should get edit" do
    get edit_language_role_url(@language_role)
    assert_response :success
  end

  test "should update language_role" do
    patch language_role_url(@language_role), params: { language_role: { language_role: @language_role.language_role } }
    assert_redirected_to language_role_url(@language_role)
  end

  test "should destroy language_role" do
    assert_difference("LanguageRole.count", -1) do
      delete language_role_url(@language_role)
    end

    assert_redirected_to language_roles_url
  end
end
