require 'test_helper'

class D3ControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

end
