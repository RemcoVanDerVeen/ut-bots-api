require "test_helper"

class TeamBotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team_bot = team_bots(:one)
  end

  test "should get index" do
    get team_bots_url
    assert_response :success
  end

  test "should get new" do
    get new_team_bot_url
    assert_response :success
  end

  test "should create team_bot" do
    assert_difference("TeamBot.count") do
      post team_bots_url, params: { team_bot: {  } }
    end

    assert_redirected_to team_bot_url(TeamBot.last)
  end

  test "should show team_bot" do
    get team_bot_url(@team_bot)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_bot_url(@team_bot)
    assert_response :success
  end

  test "should update team_bot" do
    patch team_bot_url(@team_bot), params: { team_bot: {  } }
    assert_redirected_to team_bot_url(@team_bot)
  end

  test "should destroy team_bot" do
    assert_difference("TeamBot.count", -1) do
      delete team_bot_url(@team_bot)
    end

    assert_redirected_to team_bots_url
  end
end
