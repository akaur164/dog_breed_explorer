require "test_helper"

class TemperamentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get temperaments_index_url
    assert_response :success
  end

  test "should get show" do
    get temperaments_show_url
    assert_response :success
  end
end
