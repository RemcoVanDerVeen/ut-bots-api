require "test_helper"

class RatingTest < ActiveSupport::TestCase
  test "should require value" do
    rating = Rating.new(value: nil)
    assert_not rating.valid?
    assert_includes rating.errors[:value], "can't be blank"
  end

  test "should validate value is between 1 and 10" do
    rating = Rating.new(value: 0)
    assert_not rating.valid?
    
    rating.value = 11
    assert_not rating.valid?
    
    rating.value = 5
    assert rating.valid?, rating.errors.full_messages.join(", ")
  end

  test "should belong to rateable polymorphically" do
    assert_respond_to Rating.new, :rateable
  end
end
