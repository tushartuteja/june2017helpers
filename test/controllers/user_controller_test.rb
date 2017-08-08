require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get signin" do
    get :signin
    assert_response :success
  end

  test "should get signout" do
    get :signout
    assert_response :success
  end

  test "should get singin_get" do
    get :singin_get
    assert_response :success
  end

end
