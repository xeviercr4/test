require "test_helper"

class MovieCompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie_company = movie_companies(:one)
  end

  test "should get index" do
    get movie_companies_url
    assert_response :success
  end

  test "should get new" do
    get new_movie_company_url
    assert_response :success
  end

  test "should create movie_company" do
    assert_difference("MovieCompany.count") do
      post movie_companies_url, params: { movie_company: { company_id: @movie_company.company_id, movie_id: @movie_company.movie_id } }
    end

    assert_redirected_to movie_company_url(MovieCompany.last)
  end

  test "should show movie_company" do
    get movie_company_url(@movie_company)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_company_url(@movie_company)
    assert_response :success
  end

  test "should update movie_company" do
    patch movie_company_url(@movie_company), params: { movie_company: { company_id: @movie_company.company_id, movie_id: @movie_company.movie_id } }
    assert_redirected_to movie_company_url(@movie_company)
  end

  test "should destroy movie_company" do
    assert_difference("MovieCompany.count", -1) do
      delete movie_company_url(@movie_company)
    end

    assert_redirected_to movie_companies_url
  end
end
