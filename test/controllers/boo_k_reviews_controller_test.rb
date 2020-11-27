require 'test_helper'

class BooKReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boo_k_review = boo_k_reviews(:one)
  end

  test "should get index" do
    get boo_k_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_boo_k_review_url
    assert_response :success
  end

  test "should create boo_k_review" do
    assert_difference('BooKReview.count') do
      post boo_k_reviews_url, params: { boo_k_review: { book_id: @boo_k_review.book_id, review: @boo_k_review.review, user_id: @boo_k_review.user_id } }
    end

    assert_redirected_to boo_k_review_url(BooKReview.last)
  end

  test "should show boo_k_review" do
    get boo_k_review_url(@boo_k_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_boo_k_review_url(@boo_k_review)
    assert_response :success
  end

  test "should update boo_k_review" do
    patch boo_k_review_url(@boo_k_review), params: { boo_k_review: { book_id: @boo_k_review.book_id, review: @boo_k_review.review, user_id: @boo_k_review.user_id } }
    assert_redirected_to boo_k_review_url(@boo_k_review)
  end

  test "should destroy boo_k_review" do
    assert_difference('BooKReview.count', -1) do
      delete boo_k_review_url(@boo_k_review)
    end

    assert_redirected_to boo_k_reviews_url
  end
end
