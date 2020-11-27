require 'test_helper'

class BookreviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookreview = bookreviews(:one)
  end

  test "should get index" do
    get bookreviews_url
    assert_response :success
  end

  test "should get new" do
    get new_bookreview_url
    assert_response :success
  end

  test "should create bookreview" do
    assert_difference('Bookreview.count') do
      post bookreviews_url, params: { bookreview: { book_id: @bookreview.book_id, review: @bookreview.review, user_id: @bookreview.user_id } }
    end

    assert_redirected_to bookreview_url(Bookreview.last)
  end

  test "should show bookreview" do
    get bookreview_url(@bookreview)
    assert_response :success
  end

  test "should get edit" do
    get edit_bookreview_url(@bookreview)
    assert_response :success
  end

  test "should update bookreview" do
    patch bookreview_url(@bookreview), params: { bookreview: { book_id: @bookreview.book_id, review: @bookreview.review, user_id: @bookreview.user_id } }
    assert_redirected_to bookreview_url(@bookreview)
  end

  test "should destroy bookreview" do
    assert_difference('Bookreview.count', -1) do
      delete bookreview_url(@bookreview)
    end

    assert_redirected_to bookreviews_url
  end
end
