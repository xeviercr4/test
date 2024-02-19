require "application_system_test_case"

class MoviesTest < ApplicationSystemTestCase
  setup do
    @movie = movies(:one)
  end

  test "visiting the index" do
    visit movies_url
    assert_selector "h1", text: "Movies"
  end

  test "should create movie" do
    visit movies_url
    click_on "New movie"

    fill_in "Budget", with: @movie.budget
    fill_in "Homepage", with: @movie.homepage
    fill_in "Movie status", with: @movie.movie_status
    fill_in "Overview", with: @movie.overview
    fill_in "Popularity", with: @movie.popularity
    fill_in "Release date", with: @movie.release_date
    fill_in "Revenue", with: @movie.revenue
    fill_in "Runtime", with: @movie.runtime
    fill_in "Tagline", with: @movie.tagline
    fill_in "Title", with: @movie.title
    fill_in "Vote average", with: @movie.vote_average
    fill_in "Vote count", with: @movie.vote_count
    click_on "Create Movie"

    assert_text "Movie was successfully created"
    click_on "Back"
  end

  test "should update Movie" do
    visit movie_url(@movie)
    click_on "Edit this movie", match: :first

    fill_in "Budget", with: @movie.budget
    fill_in "Homepage", with: @movie.homepage
    fill_in "Movie status", with: @movie.movie_status
    fill_in "Overview", with: @movie.overview
    fill_in "Popularity", with: @movie.popularity
    fill_in "Release date", with: @movie.release_date
    fill_in "Revenue", with: @movie.revenue
    fill_in "Runtime", with: @movie.runtime
    fill_in "Tagline", with: @movie.tagline
    fill_in "Title", with: @movie.title
    fill_in "Vote average", with: @movie.vote_average
    fill_in "Vote count", with: @movie.vote_count
    click_on "Update Movie"

    assert_text "Movie was successfully updated"
    click_on "Back"
  end

  test "should destroy Movie" do
    visit movie_url(@movie)
    click_on "Destroy this movie", match: :first

    assert_text "Movie was successfully destroyed"
  end
end
