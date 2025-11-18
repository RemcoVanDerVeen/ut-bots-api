require "test_helper"

class BotTest < ActiveSupport::TestCase
  test "should require name" do
    bot = Bot.new(name: nil)
    assert_not bot.valid?
    assert_includes bot.errors[:name], "can't be blank"
  end

  test "should require has_jumpy_behaviour" do
    bot = Bot.new(has_jumpy_behaviour: nil)
    assert_not bot.valid?
    assert_includes bot.errors[:has_jumpy_behaviour], "can't be blank"
  end

  test "should validate skill_adjust is between -3 and 3" do
    bot = Bot.new(skill_adjust: -4)
    assert_not bot.valid?
    
    bot.skill_adjust = 4
    assert_not bot.valid?
    
    bot.skill_adjust = 2
    assert bot.valid?, bot.errors.full_messages.join(", ")
  end

  test "should validate bot_accuracy is between -1 and 1" do
    bot = Bot.new(bot_accuracy: -1.5)
    assert_not bot.valid?
    
    bot.bot_accuracy = 1.5
    assert_not bot.valid?
    
    bot.bot_accuracy = 0.5
    assert bot.valid?, bot.errors.full_messages.join(", ")
  end

  test "should validate alertness is between -1 and 1" do
    bot = Bot.new(alertness: -1.5)
    assert_not bot.valid?
    
    bot.alertness = 1.5
    assert_not bot.valid?
    
    bot.alertness = 0.5
    assert bot.valid?, bot.errors.full_messages.join(", ")
  end

  test "should validate camping is between 0 and 1" do
    bot = Bot.new(camping: -0.5)
    assert_not bot.valid?
    
    bot.camping = 1.5
    assert_not bot.valid?
    
    bot.camping = 0.5
    assert bot.valid?, bot.errors.full_messages.join(", ")
  end

  test "should validate strafing_ability is between -1 and 1" do
    bot = Bot.new(strafing_ability: -1.5)
    assert_not bot.valid?
    
    bot.strafing_ability = 1.5
    assert_not bot.valid?
    
    bot.strafing_ability = 0.5
    assert bot.valid?, bot.errors.full_messages.join(", ")
  end

  test "should belong to combat_style" do
    assert_respond_to Bot.new, :combat_style
  end

  test "should belong to face" do
    assert_respond_to Bot.new, :face
  end

  test "should belong to model" do
    assert_respond_to Bot.new, :model
  end

  test "should belong to skin" do
    assert_respond_to Bot.new, :skin
  end

  test "should belong to voice_pack" do
    assert_respond_to Bot.new, :voice_pack
  end
end
