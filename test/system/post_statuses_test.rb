require "application_system_test_case"

class PostStatusesTest < ApplicationSystemTestCase
  setup do
    @post_status = post_statuses(:one)
  end

  test "visiting the index" do
    visit post_statuses_url
    assert_selector "h1", text: "Post Statuses"
  end

  test "creating a Post status" do
    visit post_statuses_url
    click_on "New Post Status"

    fill_in "Name", with: @post_status.name
    click_on "Create Post status"

    assert_text "Post status was successfully created"
    click_on "Back"
  end

  test "updating a Post status" do
    visit post_statuses_url
    click_on "Edit", match: :first

    fill_in "Name", with: @post_status.name
    click_on "Update Post status"

    assert_text "Post status was successfully updated"
    click_on "Back"
  end

  test "destroying a Post status" do
    visit post_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post status was successfully destroyed"
  end
end
