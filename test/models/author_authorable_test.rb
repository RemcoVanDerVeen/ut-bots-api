require "test_helper"

class AuthorAuthorableTest < ActiveSupport::TestCase
  test "should belong to author" do
    assert_respond_to AuthorAuthorable.new, :author
  end

  test "should belong to authorable polymorphically" do
    assert_respond_to AuthorAuthorable.new, :authorable
  end
end
