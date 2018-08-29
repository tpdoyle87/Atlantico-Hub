require 'test_helper'

class ProspectsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get prospects_create_url
    assert_response :success
  end

end
