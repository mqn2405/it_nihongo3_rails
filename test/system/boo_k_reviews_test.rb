require "application_system_test_case"

class BooKReviewsTest < ApplicationSystemTestCase
  setup do
    @boo_k_review = boo_k_reviews(:one)
  end

  test "visiting the index" do
    visit boo_k_reviews_url
    assert_selector "h1", text: "Boo K Reviews"
  end

  test "creating a Boo k review" do
    visit boo_k_reviews_url
    click_on "New Boo K Review"

    fill_in "Book", with: @boo_k_review.book_id
    fill_in "Review", with: @boo_k_review.review
    fill_in "User", with: @boo_k_review.user_id
    click_on "Create Boo k review"

    assert_text "Boo k review was successfully created"
    click_on "Back"
  end

  test "updating a Boo k review" do
    visit boo_k_reviews_url
    click_on "Edit", match: :first

    fill_in "Book", with: @boo_k_review.book_id
    fill_in "Review", with: @boo_k_review.review
    fill_in "User", with: @boo_k_review.user_id
    click_on "Update Boo k review"

    assert_text "Boo k review was successfully updated"
    click_on "Back"
  end

  test "destroying a Boo k review" do
    visit boo_k_reviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Boo k review was successfully destroyed"
  end
end
