require 'test_helper'

class HeadersControllerTest < ActionController::TestCase
  setup do
    @header = headers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:headers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create header" do
    assert_difference('Header.count') do
      post :create, header: { chapter_id: @header.chapter_id, course_id: @header.course_id, heading: @header.heading, syllabus_id: @header.syllabus_id }
    end

    assert_redirected_to header_path(assigns(:header))
  end

  test "should show header" do
    get :show, id: @header
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @header
    assert_response :success
  end

  test "should update header" do
    put :update, id: @header, header: { chapter_id: @header.chapter_id, course_id: @header.course_id, heading: @header.heading, syllabus_id: @header.syllabus_id }
    assert_redirected_to header_path(assigns(:header))
  end

  test "should destroy header" do
    assert_difference('Header.count', -1) do
      delete :destroy, id: @header
    end

    assert_redirected_to headers_path
  end
end
