require 'test_helper'

class UserCourseRelationsControllerTest < ActionController::TestCase
  setup do
    @user_course_relation = user_course_relations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_course_relations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_course_relation" do
    assert_difference('UserCourseRelation.count') do
      post :create, user_course_relation: { course_id: @user_course_relation.course_id, user_id: @user_course_relation.user_id }
    end

    assert_redirected_to user_course_relation_path(assigns(:user_course_relation))
  end

  test "should show user_course_relation" do
    get :show, id: @user_course_relation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_course_relation
    assert_response :success
  end

  test "should update user_course_relation" do
    put :update, id: @user_course_relation, user_course_relation: { course_id: @user_course_relation.course_id, user_id: @user_course_relation.user_id }
    assert_redirected_to user_course_relation_path(assigns(:user_course_relation))
  end

  test "should destroy user_course_relation" do
    assert_difference('UserCourseRelation.count', -1) do
      delete :destroy, id: @user_course_relation
    end

    assert_redirected_to user_course_relations_path
  end
end
