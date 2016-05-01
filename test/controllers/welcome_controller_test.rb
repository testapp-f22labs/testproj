require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get user_detail" do
    get :user_detail
    assert_response :success
  end

end
