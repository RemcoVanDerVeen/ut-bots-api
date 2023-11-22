require "test_helper"

class BotlistBotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @botlist_bot = botlist_bots(:one)
  end

  test "should get index" do
    get botlist_bots_url
    assert_response :success
  end

  test "should get new" do
    get new_botlist_bot_url
    assert_response :success
  end

  test "should create botlist_bot" do
    assert_difference("BotlistBot.count") do
      post botlist_bots_url, params: { botlist_bot: {  } }
    end

    assert_redirected_to botlist_bot_url(BotlistBot.last)
  end

  test "should show botlist_bot" do
    get botlist_bot_url(@botlist_bot)
    assert_response :success
  end

  test "should get edit" do
    get edit_botlist_bot_url(@botlist_bot)
    assert_response :success
  end

  test "should update botlist_bot" do
    patch botlist_bot_url(@botlist_bot), params: { botlist_bot: {  } }
    assert_redirected_to botlist_bot_url(@botlist_bot)
  end

  test "should destroy botlist_bot" do
    assert_difference("BotlistBot.count", -1) do
      delete botlist_bot_url(@botlist_bot)
    end

    assert_redirected_to botlist_bots_url
  end
end
