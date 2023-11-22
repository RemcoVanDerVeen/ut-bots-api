require "test_helper"

class XbotsConfigurationBotlistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @xbots_configuration_botlist = xbots_configuration_botlists(:one)
  end

  test "should get index" do
    get xbots_configuration_botlists_url
    assert_response :success
  end

  test "should get new" do
    get new_xbots_configuration_botlist_url
    assert_response :success
  end

  test "should create xbots_configuration_botlist" do
    assert_difference("XbotsConfigurationBotlist.count") do
      post xbots_configuration_botlists_url, params: { xbots_configuration_botlist: {  } }
    end

    assert_redirected_to xbots_configuration_botlist_url(XbotsConfigurationBotlist.last)
  end

  test "should show xbots_configuration_botlist" do
    get xbots_configuration_botlist_url(@xbots_configuration_botlist)
    assert_response :success
  end

  test "should get edit" do
    get edit_xbots_configuration_botlist_url(@xbots_configuration_botlist)
    assert_response :success
  end

  test "should update xbots_configuration_botlist" do
    patch xbots_configuration_botlist_url(@xbots_configuration_botlist), params: { xbots_configuration_botlist: {  } }
    assert_redirected_to xbots_configuration_botlist_url(@xbots_configuration_botlist)
  end

  test "should destroy xbots_configuration_botlist" do
    assert_difference("XbotsConfigurationBotlist.count", -1) do
      delete xbots_configuration_botlist_url(@xbots_configuration_botlist)
    end

    assert_redirected_to xbots_configuration_botlists_url
  end
end
