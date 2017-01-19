require 'test_helper'

class AlmanakControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get almanak_index_url
    assert_response :success
  end

end
