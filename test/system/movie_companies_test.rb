require "application_system_test_case"

class MovieCompaniesTest < ApplicationSystemTestCase
  setup do
    @movie_company = movie_companies(:one)
  end

  test "visiting the index" do
    visit movie_companies_url
    assert_selector "h1", text: "Movie companies"
  end

  test "should create movie company" do
    visit movie_companies_url
    click_on "New movie company"

    fill_in "Company", with: @movie_company.company_id
    fill_in "Movie", with: @movie_company.movie_id
    click_on "Create Movie company"

    assert_text "Movie company was successfully created"
    click_on "Back"
  end

  test "should update Movie company" do
    visit movie_company_url(@movie_company)
    click_on "Edit this movie company", match: :first

    fill_in "Company", with: @movie_company.company_id
    fill_in "Movie", with: @movie_company.movie_id
    click_on "Update Movie company"

    assert_text "Movie company was successfully updated"
    click_on "Back"
  end

  test "should destroy Movie company" do
    visit movie_company_url(@movie_company)
    click_on "Destroy this movie company", match: :first

    assert_text "Movie company was successfully destroyed"
  end
end
