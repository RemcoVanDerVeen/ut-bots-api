require "test_helper"

class XbotsConfigurationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @xbots_configuration = xbots_configurations(:one)
  end

  test "should get index" do
    get xbots_configurations_url
    assert_response :success
  end

  test "should get new" do
    get new_xbots_configuration_url
    assert_response :success
  end

  test "should create xbots_configuration" do
    assert_difference("XbotsConfiguration.count") do
      post xbots_configurations_url, params: { xbots_configuration: {  } }
    end

    assert_redirected_to xbots_configuration_url(XbotsConfiguration.last)
  end

  test "should show xbots_configuration" do
    get xbots_configuration_url(@xbots_configuration)
    assert_response :success
  end

  test "should get edit" do
    get edit_xbots_configuration_url(@xbots_configuration)
    assert_response :success
  end

  test "should update xbots_configuration" do
    patch xbots_configuration_url(@xbots_configuration), params: { xbots_configuration: {  } }
    assert_redirected_to xbots_configuration_url(@xbots_configuration)
  end

  test "should destroy xbots_configuration" do
    assert_difference("XbotsConfiguration.count", -1) do
      delete xbots_configuration_url(@xbots_configuration)
    end

    assert_redirected_to xbots_configurations_url
  end
end
