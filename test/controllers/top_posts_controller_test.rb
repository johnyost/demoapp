require 'test_helper'

class TopPostsControllerTest < ActionController::TestCase
  setup do
    @top_post = top_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:top_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create top_post" do
    assert_difference('TopPost.count') do
      post :create, top_post: { post: @top_post.post, subPostsCount: @top_post.subPostsCount, subPostsScore: @top_post.subPostsScore }
    end

    assert_redirected_to top_post_path(assigns(:top_post))
  end

  test "should show top_post" do
    get :show, id: @top_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @top_post
    assert_response :success
  end

  test "should update top_post" do
    patch :update, id: @top_post, top_post: { post: @top_post.post, subPostsCount: @top_post.subPostsCount, subPostsScore: @top_post.subPostsScore }
    assert_redirected_to top_post_path(assigns(:top_post))
  end

  test "should destroy top_post" do
    assert_difference('TopPost.count', -1) do
      delete :destroy, id: @top_post
    end

    assert_redirected_to top_posts_path
  end
end
