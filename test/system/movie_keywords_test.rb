require "application_system_test_case"

class MovieKeywordsTest < ApplicationSystemTestCase
  setup do
    @movie_keyword = movie_keywords(:one)
  end

  test "visiting the index" do
    visit movie_keywords_url
    assert_selector "h1", text: "Movie keywords"
  end

  test "should create movie keyword" do
    visit movie_keywords_url
    click_on "New movie keyword"

    fill_in "Keyword", with: @movie_keyword.keyword_id
    fill_in "Movie", with: @movie_keyword.movie_id
    click_on "Create Movie keyword"

    assert_text "Movie keyword was successfully created"
    click_on "Back"
  end

  test "should update Movie keyword" do
    visit movie_keyword_url(@movie_keyword)
    click_on "Edit this movie keyword", match: :first

    fill_in "Keyword", with: @movie_keyword.keyword_id
    fill_in "Movie", with: @movie_keyword.movie_id
    click_on "Update Movie keyword"

    assert_text "Movie keyword was successfully updated"
    click_on "Back"
  end

  test "should destroy Movie keyword" do
    visit movie_keyword_url(@movie_keyword)
    click_on "Destroy this movie keyword", match: :first

    assert_text "Movie keyword was successfully destroyed"
  end
end
