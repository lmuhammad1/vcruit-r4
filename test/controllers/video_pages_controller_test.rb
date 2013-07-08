require 'test_helper'

class VideoPagesControllerTest < ActionController::TestCase
  setup do
    @video_page = video_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:video_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create video_page" do
    assert_difference('VideoPage.count') do
      post :create, video_page: { description: @video_page.description, name: @video_page.name, title: @video_page.title }
    end

    assert_redirected_to video_page_path(assigns(:video_page))
  end

  test "should show video_page" do
    get :show, id: @video_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @video_page
    assert_response :success
  end

  test "should update video_page" do
    patch :update, id: @video_page, video_page: { description: @video_page.description, name: @video_page.name, title: @video_page.title }
    assert_redirected_to video_page_path(assigns(:video_page))
  end

  test "should destroy video_page" do
    assert_difference('VideoPage.count', -1) do
      delete :destroy, id: @video_page
    end

    assert_redirected_to video_pages_path
  end
end
