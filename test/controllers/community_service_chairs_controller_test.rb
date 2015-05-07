require 'test_helper'

class CommunityServiceChairsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
