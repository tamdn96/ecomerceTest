require 'test_helper'

class NetTimeoutControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get net_timeout_index_url
    assert_response :success
  end

end
