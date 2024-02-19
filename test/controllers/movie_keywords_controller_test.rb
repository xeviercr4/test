require "test_helper"

class MovieKeywordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie_keyword = movie_keywords(:one)
  end

  test "should get index" do
    get movie_keywords_url
    assert_response :success
  end

  test "should get new" do
    get new_movie_keyword_url
    assert_response :success
  end

  test "should create movie_keyword" do
    assert_difference("MovieKeyword.count") do
      post movie_keywords_url, params: { movie_keyword: { keyword_id: @movie_keyword.keyword_id, movie_id: @movie_keyword.movie_id } }
    end

    assert_redirected_to movie_keyword_url(MovieKeyword.last)
  end

  test "should show movie_keyword" do
    get movie_keyword_url(@movie_keyword)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_keyword_url(@movie_keyword)
    assert_response :success
  end

  test "should update movie_keyword" do
    patch movie_keyword_url(@movie_keyword), params: { movie_keyword: { keyword_id: @movie_keyword.keyword_id, movie_id: @movie_keyword.movie_id } }
    assert_redirected_to movie_keyword_url(@movie_keyword)
  end

  test "should destroy movie_keyword" do
    assert_difference("MovieKeyword.count", -1) do
      delete movie_keyword_url(@movie_keyword)
    end

    assert_redirected_to movie_keywords_url
  end
end
