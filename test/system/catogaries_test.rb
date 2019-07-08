require "application_system_test_case"

class CatogariesTest < ApplicationSystemTestCase
  setup do
    @catogary = catogaries(:one)
  end

  test "visiting the index" do
    visit catogaries_url
    assert_selector "h1", text: "Catogaries"
  end

  test "creating a Catogary" do
    visit catogaries_url
    click_on "New Catogary"

    fill_in "Tenloai", with: @catogary.tenloai
    click_on "Create Catogary"

    assert_text "Catogary was successfully created"
    click_on "Back"
  end

  test "updating a Catogary" do
    visit catogaries_url
    click_on "Edit", match: :first

    fill_in "Tenloai", with: @catogary.tenloai
    click_on "Update Catogary"

    assert_text "Catogary was successfully updated"
    click_on "Back"
  end

  test "destroying a Catogary" do
    visit catogaries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Catogary was successfully destroyed"
  end
end
