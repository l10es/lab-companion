require "application_system_test_case"

class MemberGradesTest < ApplicationSystemTestCase
  setup do
    @member_grade = member_grades(:one)
  end

  test "visiting the index" do
    visit member_grades_url
    assert_selector "h1", text: "Member Grades"
  end

  test "creating a Member grade" do
    visit member_grades_url
    click_on "New Member Grade"

    fill_in "Name", with: @member_grade.name
    click_on "Create Member grade"

    assert_text "Member grade was successfully created"
    click_on "Back"
  end

  test "updating a Member grade" do
    visit member_grades_url
    click_on "Edit", match: :first

    fill_in "Name", with: @member_grade.name
    click_on "Update Member grade"

    assert_text "Member grade was successfully updated"
    click_on "Back"
  end

  test "destroying a Member grade" do
    visit member_grades_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Member grade was successfully destroyed"
  end
end
