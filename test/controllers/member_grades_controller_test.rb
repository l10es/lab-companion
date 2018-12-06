require 'test_helper'

class MemberGradesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member_grade = member_grades(:one)
  end

  test "should get index" do
    get member_grades_url
    assert_response :success
  end

  test "should get new" do
    get new_member_grade_url
    assert_response :success
  end

  test "should create member_grade" do
    assert_difference('MemberGrade.count') do
      post member_grades_url, params: { member_grade: { name: @member_grade.name } }
    end

    assert_redirected_to member_grade_url(MemberGrade.last)
  end

  test "should show member_grade" do
    get member_grade_url(@member_grade)
    assert_response :success
  end

  test "should get edit" do
    get edit_member_grade_url(@member_grade)
    assert_response :success
  end

  test "should update member_grade" do
    patch member_grade_url(@member_grade), params: { member_grade: { name: @member_grade.name } }
    assert_redirected_to member_grade_url(@member_grade)
  end

  test "should destroy member_grade" do
    assert_difference('MemberGrade.count', -1) do
      delete member_grade_url(@member_grade)
    end

    assert_redirected_to member_grades_url
  end
end
