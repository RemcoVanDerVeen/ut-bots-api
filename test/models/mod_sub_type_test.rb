require "test_helper"

class ModSubTypeTest < ActiveSupport::TestCase
  test "should require name" do
    mod_sub_type = ModSubType.new(name: nil)
    assert_not mod_sub_type.valid?
    assert_includes mod_sub_type.errors[:name], "can't be blank"
  end

  test "should belong to mod_type" do
    assert_respond_to ModSubType.new, :mod_type
  end
end
