require "test_helper"

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    # Instead of using welcome_index_url, you can use the root_url
    get root_url
    assert_response :success
  end
end
