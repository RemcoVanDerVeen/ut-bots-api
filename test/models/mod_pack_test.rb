require "test_helper"

class ModPackTest < ActiveSupport::TestCase
  test "should be valid with valid attributes" do
    mod_type = create(:mod_type)
    mod_pack = build(:mod_pack, mod_type: mod_type, name: "My Mod Pack")

    assert_predicate mod_pack, :valid?
  end

  test "should require name" do
    mod_type = create(:mod_type)
    mod_pack = build(:mod_pack, mod_type: mod_type, name: nil)

    assert_not mod_pack.valid?
    assert_includes mod_pack.errors[:name], "can't be blank"
  end

  test "should have many mod_pack_contents" do
    assert_respond_to ModPack.new, :mod_pack_contents
  end
end
