require "test_helper"

class ModPackContentTest < ActiveSupport::TestCase
  test "should belong to content polymorphically" do
    assert_respond_to ModPackContent.new, :content
  end

  test "should belong to mod_pack" do
    assert_respond_to ModPackContent.new, :mod_pack
  end
end
