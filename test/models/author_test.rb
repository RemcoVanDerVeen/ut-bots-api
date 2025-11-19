require "test_helper"

class AuthorTest < ActiveSupport::TestCase
  test "should be valid with valid attributes" do
    author = Author.new(nickname: "TestAuthor")

    assert_predicate author, :valid?
  end

  test "should require nickname" do
    author = Author.new(nickname: nil)

    assert_not author.valid?
    assert_includes author.errors[:nickname], "can't be blank"
  end
end
