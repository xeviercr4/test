require "application_system_test_case"

class MovieCrewsTest < ApplicationSystemTestCase
  setup do
    @movie_crew = movie_crews(:one)
  end

  test "visiting the index" do
    visit movie_crews_url
    assert_selector "h1", text: "Movie crews"
  end

  test "should create movie crew" do
    visit movie_crews_url
    click_on "New movie crew"

    fill_in "Department", with: @movie_crew.department_id
    fill_in "Job", with: @movie_crew.job
    fill_in "Movie", with: @movie_crew.movie_id
    fill_in "Person", with: @movie_crew.person_id
    click_on "Create Movie crew"

    assert_text "Movie crew was successfully created"
    click_on "Back"
  end

  test "should update Movie crew" do
    visit movie_crew_url(@movie_crew)
    click_on "Edit this movie crew", match: :first

    fill_in "Department", with: @movie_crew.department_id
    fill_in "Job", with: @movie_crew.job
    fill_in "Movie", with: @movie_crew.movie_id
    fill_in "Person", with: @movie_crew.person_id
    click_on "Update Movie crew"

    assert_text "Movie crew was successfully updated"
    click_on "Back"
  end

  test "should destroy Movie crew" do
    visit movie_crew_url(@movie_crew)
    click_on "Destroy this movie crew", match: :first

    assert_text "Movie crew was successfully destroyed"
  end
end
