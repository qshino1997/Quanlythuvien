require 'test_helper'

class CatogariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @catogary = catogaries(:one)
  end

  test "should get index" do
    get catogaries_url
    assert_response :success
  end

  test "should get new" do
    get new_catogary_url
    assert_response :success
  end

  test "should create catogary" do
    assert_difference('Catogary.count') do
      post catogaries_url, params: { catogary: { tenloai: @catogary.tenloai } }
    end

    assert_redirected_to catogary_url(Catogary.last)
  end

  test "should show catogary" do
    get catogary_url(@catogary)
    assert_response :success
  end

  test "should get edit" do
    get edit_catogary_url(@catogary)
    assert_response :success
  end

  test "should update catogary" do
    patch catogary_url(@catogary), params: { catogary: { tenloai: @catogary.tenloai } }
    assert_redirected_to catogary_url(@catogary)
  end

  test "should destroy catogary" do
    assert_difference('Catogary.count', -1) do
      delete catogary_url(@catogary)
    end

    assert_redirected_to catogaries_url
  end
end
