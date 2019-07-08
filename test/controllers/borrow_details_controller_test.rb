require 'test_helper'

class BorrowDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @borrow_detail = borrow_details(:one)
  end

  test "should get index" do
    get borrow_details_url
    assert_response :success
  end

  test "should get new" do
    get new_borrow_detail_url
    assert_response :success
  end

  test "should create borrow_detail" do
    assert_difference('BorrowDetail.count') do
      post borrow_details_url, params: { borrow_detail: { borrow_id: @borrow_detail.borrow_id, thoigianmuon: @borrow_detail.thoigianmuon, thoigiantra: @borrow_detail.thoigiantra } }
    end

    assert_redirected_to borrow_detail_url(BorrowDetail.last)
  end

  test "should show borrow_detail" do
    get borrow_detail_url(@borrow_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_borrow_detail_url(@borrow_detail)
    assert_response :success
  end

  test "should update borrow_detail" do
    patch borrow_detail_url(@borrow_detail), params: { borrow_detail: { borrow_id: @borrow_detail.borrow_id, thoigianmuon: @borrow_detail.thoigianmuon, thoigiantra: @borrow_detail.thoigiantra } }
    assert_redirected_to borrow_detail_url(@borrow_detail)
  end

  test "should destroy borrow_detail" do
    assert_difference('BorrowDetail.count', -1) do
      delete borrow_detail_url(@borrow_detail)
    end

    assert_redirected_to borrow_details_url
  end
end
