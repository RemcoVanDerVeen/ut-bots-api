require "test_helper"

class PlayerModelTest < ActiveSupport::TestCase
  test "should be valid with valid attributes" do
    player_model = PlayerModel.new(name: "Male Soldier", ut_value: "MaleSoldier")

    assert_predicate player_model, :valid?
  end

  test "should require name" do
    player_model = PlayerModel.new(name: nil, ut_value: "MaleSoldier")

    assert_not player_model.valid?
    assert_includes player_model.errors[:name], "can't be blank"
  end

  test "should require ut_value" do
    player_model = PlayerModel.new(name: "Male Soldier", ut_value: nil)

    assert_not player_model.valid?
    assert_includes player_model.errors[:ut_value], "can't be blank"
  end

  test "should have many voice_packs through player_model_voice_packs" do
    assert_respond_to PlayerModel.new, :voice_packs
  end

  test "FEMALE_MODELS constant should be defined" do
    assert_kind_of Array, PlayerModel::FEMALE_MODELS
    assert_includes PlayerModel::FEMALE_MODELS, "Female Soldier"
  end

  test "MALE_MODELS constant should be defined" do
    assert_kind_of Array, PlayerModel::MALE_MODELS
    assert_includes PlayerModel::MALE_MODELS, "Male Soldier"
  end

  test "ROBOT_MODELS constant should be defined" do
    assert_kind_of Array, PlayerModel::ROBOT_MODELS
    assert_includes PlayerModel::ROBOT_MODELS, "Boss"
  end
end
