require "application_system_test_case"

class BorrowDetailsTest < ApplicationSystemTestCase
  setup do
    @borrow_detail = borrow_details(:one)
  end

  test "visiting the index" do
    visit borrow_details_url
    assert_selector "h1", text: "Borrow Details"
  end

  test "creating a Borrow detail" do
    visit borrow_details_url
    click_on "New Borrow Detail"

    fill_in "Borrow", with: @borrow_detail.borrow_id
    fill_in "Thoigianmuon", with: @borrow_detail.thoigianmuon
    fill_in "Thoigiantra", with: @borrow_detail.thoigiantra
    click_on "Create Borrow detail"

    assert_text "Borrow detail was successfully created"
    click_on "Back"
  end

  test "updating a Borrow detail" do
    visit borrow_details_url
    click_on "Edit", match: :first

    fill_in "Borrow", with: @borrow_detail.borrow_id
    fill_in "Thoigianmuon", with: @borrow_detail.thoigianmuon
    fill_in "Thoigiantra", with: @borrow_detail.thoigiantra
    click_on "Update Borrow detail"

    assert_text "Borrow detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Borrow detail" do
    visit borrow_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Borrow detail was successfully destroyed"
  end
end
