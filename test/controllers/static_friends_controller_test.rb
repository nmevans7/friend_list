require 'test_helper'

class StaticFriendsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_friends_home_url
    assert_response :success
  end

  test "should get about" do
    get static_friends_about_url
    assert_response :success
  end

end
