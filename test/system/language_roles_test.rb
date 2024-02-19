require "application_system_test_case"

class LanguageRolesTest < ApplicationSystemTestCase
  setup do
    @language_role = language_roles(:one)
  end

  test "visiting the index" do
    visit language_roles_url
    assert_selector "h1", text: "Language roles"
  end

  test "should create language role" do
    visit language_roles_url
    click_on "New language role"

    fill_in "Language role", with: @language_role.language_role
    click_on "Create Language role"

    assert_text "Language role was successfully created"
    click_on "Back"
  end

  test "should update Language role" do
    visit language_role_url(@language_role)
    click_on "Edit this language role", match: :first

    fill_in "Language role", with: @language_role.language_role
    click_on "Update Language role"

    assert_text "Language role was successfully updated"
    click_on "Back"
  end

  test "should destroy Language role" do
    visit language_role_url(@language_role)
    click_on "Destroy this language role", match: :first

    assert_text "Language role was successfully destroyed"
  end
end
