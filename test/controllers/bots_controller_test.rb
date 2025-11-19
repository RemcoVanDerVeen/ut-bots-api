require "test_helper"

class BotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bot = create(:bot)
  end

  test "should get index" do
    get bots_url

    assert_response :success
  end

  test "should get new" do
    get new_bot_url

    assert_response :success
  end

  test "should create bot" do
    combat_style = create(:combat_style)
    model = create(:player_model)
    skin = create(:player_model_skin)
    face = create(:player_model_skin_face)
    voice_pack = create(:voice_pack)
    colour = create(:colour)

    assert_difference("Bot.count") do
      post bots_url, params: { bot: {
        name: "NewBot",
        has_jumpy_behaviour: false,
        skill_adjust: 0,
        bot_accuracy: 0,
        alertness: 0,
        camping: 0,
        strafing_ability: 0,
        combat_style_id: combat_style.id,
        model_id: model.id,
        skin_id: skin.id,
        face_id: face.id,
        voice_pack_id: voice_pack.id,
        colour_id: colour.id
      } }
    end

    assert_redirected_to bot_url(Bot.last)
  end

  test "should show bot" do
    get bot_url(@bot)

    assert_response :success
  end

  test "should get edit" do
    get edit_bot_url(@bot)

    assert_response :success
  end

  test "should update bot" do
    patch bot_url(@bot), params: { bot: { name: @bot.name } }

    assert_redirected_to bot_url(@bot)
  end

  test "should destroy bot" do
    assert_difference("Bot.count", -1) do
      delete bot_url(@bot)
    end

    assert_redirected_to bots_url
  end
end
