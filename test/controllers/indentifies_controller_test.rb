require 'test_helper'

class IndentifiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @indentify = indentifies(:one)
  end

  test "should get index" do
    get indentifies_url
    assert_response :success
  end

  test "should get new" do
    get new_indentify_url
    assert_response :success
  end

  test "should create indentify" do
    assert_difference('Indentify.count') do
      post indentifies_url, params: { indentify: { book_id: @indentify.book_id, indentify_code: @indentify.indentify_code } }
    end

    assert_redirected_to indentify_url(Indentify.last)
  end

  test "should show indentify" do
    get indentify_url(@indentify)
    assert_response :success
  end

  test "should get edit" do
    get edit_indentify_url(@indentify)
    assert_response :success
  end

  test "should update indentify" do
    patch indentify_url(@indentify), params: { indentify: { book_id: @indentify.book_id, indentify_code: @indentify.indentify_code } }
    assert_redirected_to indentify_url(@indentify)
  end

  test "should destroy indentify" do
    assert_difference('Indentify.count', -1) do
      delete indentify_url(@indentify)
    end

    assert_redirected_to indentifies_url
  end
end
