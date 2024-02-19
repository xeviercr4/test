require "application_system_test_case"

class ProductionCountriesTest < ApplicationSystemTestCase
  setup do
    @production_country = production_countries(:one)
  end

  test "visiting the index" do
    visit production_countries_url
    assert_selector "h1", text: "Production countries"
  end

  test "should create production country" do
    visit production_countries_url
    click_on "New production country"

    fill_in "Country", with: @production_country.country_id
    fill_in "Movie", with: @production_country.movie_id
    click_on "Create Production country"

    assert_text "Production country was successfully created"
    click_on "Back"
  end

  test "should update Production country" do
    visit production_country_url(@production_country)
    click_on "Edit this production country", match: :first

    fill_in "Country", with: @production_country.country_id
    fill_in "Movie", with: @production_country.movie_id
    click_on "Update Production country"

    assert_text "Production country was successfully updated"
    click_on "Back"
  end

  test "should destroy Production country" do
    visit production_country_url(@production_country)
    click_on "Destroy this production country", match: :first

    assert_text "Production country was successfully destroyed"
  end
end
