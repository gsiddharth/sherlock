require 'test_helper'

class OminauthCallbacksControllerTest < ActionController::TestCase
  test "should get facebook" do
    get :facebook
    assert_response :success
  end

  test "should get google" do
    get :google
    assert_response :success
  end

end
