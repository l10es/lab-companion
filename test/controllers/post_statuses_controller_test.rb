require 'test_helper'

class PostStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_status = post_statuses(:one)
  end

  test "should get index" do
    get post_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_post_status_url
    assert_response :success
  end

  test "should create post_status" do
    assert_difference('PostStatus.count') do
      post post_statuses_url, params: { post_status: { name: @post_status.name } }
    end

    assert_redirected_to post_status_url(PostStatus.last)
  end

  test "should show post_status" do
    get post_status_url(@post_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_status_url(@post_status)
    assert_response :success
  end

  test "should update post_status" do
    patch post_status_url(@post_status), params: { post_status: { name: @post_status.name } }
    assert_redirected_to post_status_url(@post_status)
  end

  test "should destroy post_status" do
    assert_difference('PostStatus.count', -1) do
      delete post_status_url(@post_status)
    end

    assert_redirected_to post_statuses_url
  end
end
