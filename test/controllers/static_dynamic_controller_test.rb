require 'test_helper'

class StaticDynamicControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_dynamic_home_url
    assert_response :success
  end

  test "should get about" do
    get static_dynamic_about_url
    assert_response :success
  end

  test "should get contact" do
    get static_dynamic_contact_url
    assert_response :success
  end

end
