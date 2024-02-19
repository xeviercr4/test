require "test_helper"

class ProductionCountriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @production_country = production_countries(:one)
  end

  test "should get index" do
    get production_countries_url
    assert_response :success
  end

  test "should get new" do
    get new_production_country_url
    assert_response :success
  end

  test "should create production_country" do
    assert_difference("ProductionCountry.count") do
      post production_countries_url, params: { production_country: { country_id: @production_country.country_id, movie_id: @production_country.movie_id } }
    end

    assert_redirected_to production_country_url(ProductionCountry.last)
  end

  test "should show production_country" do
    get production_country_url(@production_country)
    assert_response :success
  end

  test "should get edit" do
    get edit_production_country_url(@production_country)
    assert_response :success
  end

  test "should update production_country" do
    patch production_country_url(@production_country), params: { production_country: { country_id: @production_country.country_id, movie_id: @production_country.movie_id } }
    assert_redirected_to production_country_url(@production_country)
  end

  test "should destroy production_country" do
    assert_difference("ProductionCountry.count", -1) do
      delete production_country_url(@production_country)
    end

    assert_redirected_to production_countries_url
  end
end
