require "application_system_test_case"

class BookreviewsTest < ApplicationSystemTestCase
  setup do
    @bookreview = bookreviews(:one)
  end

  test "visiting the index" do
    visit bookreviews_url
    assert_selector "h1", text: "Bookreviews"
  end

  test "creating a Bookreview" do
    visit bookreviews_url
    click_on "New Bookreview"

    fill_in "Book", with: @bookreview.book_id
    fill_in "Review", with: @bookreview.review
    fill_in "User", with: @bookreview.user_id
    click_on "Create Bookreview"

    assert_text "Bookreview was successfully created"
    click_on "Back"
  end

  test "updating a Bookreview" do
    visit bookreviews_url
    click_on "Edit", match: :first

    fill_in "Book", with: @bookreview.book_id
    fill_in "Review", with: @bookreview.review
    fill_in "User", with: @bookreview.user_id
    click_on "Update Bookreview"

    assert_text "Bookreview was successfully updated"
    click_on "Back"
  end

  test "destroying a Bookreview" do
    visit bookreviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bookreview was successfully destroyed"
  end
end
