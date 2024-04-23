require "test_helper"

class NodeRedControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get node_red_index_url
    assert_response :success
  end
end
