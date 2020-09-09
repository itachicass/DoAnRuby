require 'test_helper'

class DonhangControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get donhang_create_url
    assert_response :success
  end

end
