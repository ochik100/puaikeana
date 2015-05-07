require 'test_helper'

class MarketingChairsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
