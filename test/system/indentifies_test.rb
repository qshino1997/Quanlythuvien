require "application_system_test_case"

class IndentifiesTest < ApplicationSystemTestCase
  setup do
    @indentify = indentifies(:one)
  end

  test "visiting the index" do
    visit indentifies_url
    assert_selector "h1", text: "Indentifies"
  end

  test "creating a Indentify" do
    visit indentifies_url
    click_on "New Indentify"

    fill_in "Book", with: @indentify.book_id
    fill_in "Indentify code", with: @indentify.indentify_code
    click_on "Create Indentify"

    assert_text "Indentify was successfully created"
    click_on "Back"
  end

  test "updating a Indentify" do
    visit indentifies_url
    click_on "Edit", match: :first

    fill_in "Book", with: @indentify.book_id
    fill_in "Indentify code", with: @indentify.indentify_code
    click_on "Update Indentify"

    assert_text "Indentify was successfully updated"
    click_on "Back"
  end

  test "destroying a Indentify" do
    visit indentifies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Indentify was successfully destroyed"
  end
end
