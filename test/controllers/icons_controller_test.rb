require 'test_helper'

class IconsControllerTest < ActionDispatch::IntegrationTest
  test "should get register" do
    get icons_register_url
    assert_response :success
  end

end
