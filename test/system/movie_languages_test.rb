require "application_system_test_case"

class MovieLanguagesTest < ApplicationSystemTestCase
  setup do
    @movie_language = movie_languages(:one)
  end

  test "visiting the index" do
    visit movie_languages_url
    assert_selector "h1", text: "Movie languages"
  end

  test "should create movie language" do
    visit movie_languages_url
    click_on "New movie language"

    fill_in "Language", with: @movie_language.language_id
    fill_in "Language role", with: @movie_language.language_role_id
    fill_in "Movie", with: @movie_language.movie_id
    click_on "Create Movie language"

    assert_text "Movie language was successfully created"
    click_on "Back"
  end

  test "should update Movie language" do
    visit movie_language_url(@movie_language)
    click_on "Edit this movie language", match: :first

    fill_in "Language", with: @movie_language.language_id
    fill_in "Language role", with: @movie_language.language_role_id
    fill_in "Movie", with: @movie_language.movie_id
    click_on "Update Movie language"

    assert_text "Movie language was successfully updated"
    click_on "Back"
  end

  test "should destroy Movie language" do
    visit movie_language_url(@movie_language)
    click_on "Destroy this movie language", match: :first

    assert_text "Movie language was successfully destroyed"
  end
end
