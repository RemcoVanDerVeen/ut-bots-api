require "test_helper"

class BotTest < ActiveSupport::TestCase
  test "should be valid with valid attributes" do
    bot = build(:bot)

    assert_predicate bot, :valid?
  end

  test "should require name" do
    bot = build(:bot, name: nil)

    assert_not bot.valid?
    assert_includes bot.errors[:name], "can't be blank"
  end

  test "should validate skill_adjust is between -3 and 3" do
    bot = build(:bot, skill_adjust: -4)

    assert_not bot.valid?

    bot.skill_adjust = 4

    assert_not bot.valid?

    bot.skill_adjust = 2

    assert_predicate bot, :valid?, bot.errors.full_messages.join(", ")
  end

  test "should validate bot_accuracy is between -1 and 1" do
    bot = build(:bot, bot_accuracy: -1.5)

    assert_not bot.valid?

    bot.bot_accuracy = 1.5

    assert_not bot.valid?

    bot.bot_accuracy = 0.5

    assert_predicate bot, :valid?, bot.errors.full_messages.join(", ")
  end

  test "should validate alertness is between -1 and 1" do
    bot = build(:bot, alertness: -1.5)

    assert_not bot.valid?

    bot.alertness = 1.5

    assert_not bot.valid?

    bot.alertness = 0.5

    assert_predicate bot, :valid?, bot.errors.full_messages.join(", ")
  end

  test "should validate camping is between 0 and 1" do
    bot = build(:bot, camping: -0.5)

    assert_not bot.valid?

    bot.camping = 1.5

    assert_not bot.valid?

    bot.camping = 0.5

    assert_predicate bot, :valid?, bot.errors.full_messages.join(", ")
  end

  test "should validate strafing_ability is between -1 and 1" do
    bot = build(:bot, strafing_ability: -1.5)

    assert_not bot.valid?

    bot.strafing_ability = 1.5

    assert_not bot.valid?

    bot.strafing_ability = 0.5

    assert_predicate bot, :valid?, bot.errors.full_messages.join(", ")
  end

  test "should belong to combat_style" do
    bot = create(:bot)

    assert_instance_of CombatStyle, bot.combat_style
  end

  test "should belong to face" do
    bot = create(:bot)

    assert_instance_of PlayerModelSkinFace, bot.face
  end

  test "should belong to model" do
    bot = create(:bot)

    assert_instance_of PlayerModel, bot.model
  end

  test "should belong to skin" do
    bot = create(:bot)

    assert_instance_of PlayerModelSkin, bot.skin
  end

  test "should belong to voice_pack" do
    bot = create(:bot)

    assert_instance_of VoicePack, bot.voice_pack
  end
end
