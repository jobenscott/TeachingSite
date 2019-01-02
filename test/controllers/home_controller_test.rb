require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get Dash" do
    get home_Dash_url
    assert_response :success
  end

end
