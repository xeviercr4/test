require "application_system_test_case"

class MovieCastsTest < ApplicationSystemTestCase
  setup do
    @movie_cast = movie_casts(:one)
  end

  test "visiting the index" do
    visit movie_casts_url
    assert_selector "h1", text: "Movie casts"
  end

  test "should create movie cast" do
    visit movie_casts_url
    click_on "New movie cast"

    fill_in "Cast order", with: @movie_cast.cast_order
    fill_in "Character name", with: @movie_cast.character_name
    fill_in "Gender", with: @movie_cast.gender_id
    fill_in "Movie", with: @movie_cast.movie_id
    fill_in "Person", with: @movie_cast.person_id
    click_on "Create Movie cast"

    assert_text "Movie cast was successfully created"
    click_on "Back"
  end

  test "should update Movie cast" do
    visit movie_cast_url(@movie_cast)
    click_on "Edit this movie cast", match: :first

    fill_in "Cast order", with: @movie_cast.cast_order
    fill_in "Character name", with: @movie_cast.character_name
    fill_in "Gender", with: @movie_cast.gender_id
    fill_in "Movie", with: @movie_cast.movie_id
    fill_in "Person", with: @movie_cast.person_id
    click_on "Update Movie cast"

    assert_text "Movie cast was successfully updated"
    click_on "Back"
  end

  test "should destroy Movie cast" do
    visit movie_cast_url(@movie_cast)
    click_on "Destroy this movie cast", match: :first

    assert_text "Movie cast was successfully destroyed"
  end
end
