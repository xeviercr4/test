require "test_helper"

class MovieCastsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie_cast = movie_casts(:one)
  end

  test "should get index" do
    get movie_casts_url
    assert_response :success
  end

  test "should get new" do
    get new_movie_cast_url
    assert_response :success
  end

  test "should create movie_cast" do
    assert_difference("MovieCast.count") do
      post movie_casts_url, params: { movie_cast: { cast_order: @movie_cast.cast_order, character_name: @movie_cast.character_name, gender_id: @movie_cast.gender_id, movie_id: @movie_cast.movie_id, person_id: @movie_cast.person_id } }
    end

    assert_redirected_to movie_cast_url(MovieCast.last)
  end

  test "should show movie_cast" do
    get movie_cast_url(@movie_cast)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_cast_url(@movie_cast)
    assert_response :success
  end

  test "should update movie_cast" do
    patch movie_cast_url(@movie_cast), params: { movie_cast: { cast_order: @movie_cast.cast_order, character_name: @movie_cast.character_name, gender_id: @movie_cast.gender_id, movie_id: @movie_cast.movie_id, person_id: @movie_cast.person_id } }
    assert_redirected_to movie_cast_url(@movie_cast)
  end

  test "should destroy movie_cast" do
    assert_difference("MovieCast.count", -1) do
      delete movie_cast_url(@movie_cast)
    end

    assert_redirected_to movie_casts_url
  end
end
