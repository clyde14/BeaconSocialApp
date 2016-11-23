require 'test_helper'

class SignalPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @signal_post = signal_posts(:one)
  end

  test "should get index" do
    get signal_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_signal_post_url
    assert_response :success
  end

  test "should create signal_post" do
    assert_difference('SignalPost.count') do
      post signal_posts_url, params: { signal_post: { content: @signal_post.content, userId: @signal_post.userId } }
    end

    assert_redirected_to signal_post_url(SignalPost.last)
  end

  test "should show signal_post" do
    get signal_post_url(@signal_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_signal_post_url(@signal_post)
    assert_response :success
  end

  test "should update signal_post" do
    patch signal_post_url(@signal_post), params: { signal_post: { content: @signal_post.content, userId: @signal_post.userId } }
    assert_redirected_to signal_post_url(@signal_post)
  end

  test "should destroy signal_post" do
    assert_difference('SignalPost.count', -1) do
      delete signal_post_url(@signal_post)
    end

    assert_redirected_to signal_posts_url
  end
end
