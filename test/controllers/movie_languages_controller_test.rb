require "test_helper"

class MovieLanguagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie_language = movie_languages(:one)
  end

  test "should get index" do
    get movie_languages_url
    assert_response :success
  end

  test "should get new" do
    get new_movie_language_url
    assert_response :success
  end

  test "should create movie_language" do
    assert_difference("MovieLanguage.count") do
      post movie_languages_url, params: { movie_language: { language_id: @movie_language.language_id, language_role_id: @movie_language.language_role_id, movie_id: @movie_language.movie_id } }
    end

    assert_redirected_to movie_language_url(MovieLanguage.last)
  end

  test "should show movie_language" do
    get movie_language_url(@movie_language)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_language_url(@movie_language)
    assert_response :success
  end

  test "should update movie_language" do
    patch movie_language_url(@movie_language), params: { movie_language: { language_id: @movie_language.language_id, language_role_id: @movie_language.language_role_id, movie_id: @movie_language.movie_id } }
    assert_redirected_to movie_language_url(@movie_language)
  end

  test "should destroy movie_language" do
    assert_difference("MovieLanguage.count", -1) do
      delete movie_language_url(@movie_language)
    end

    assert_redirected_to movie_languages_url
  end
end
