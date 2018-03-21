require 'test_helper'

class CinemasFilmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cinemas_film = cinemas_films(:one)
  end

  test "should get index" do
    get cinemas_films_url
    assert_response :success
  end

  test "should get new" do
    get new_cinemas_film_url
    assert_response :success
  end

  test "should create cinemas_film" do
    assert_difference('CinemasFilm.count') do
      post cinemas_films_url, params: { cinemas_film: {  } }
    end

    assert_redirected_to cinemas_film_url(CinemasFilm.last)
  end

  test "should show cinemas_film" do
    get cinemas_film_url(@cinemas_film)
    assert_response :success
  end

  test "should get edit" do
    get edit_cinemas_film_url(@cinemas_film)
    assert_response :success
  end

  test "should update cinemas_film" do
    patch cinemas_film_url(@cinemas_film), params: { cinemas_film: {  } }
    assert_redirected_to cinemas_film_url(@cinemas_film)
  end

  test "should destroy cinemas_film" do
    assert_difference('CinemasFilm.count', -1) do
      delete cinemas_film_url(@cinemas_film)
    end

    assert_redirected_to cinemas_films_url
  end
end
