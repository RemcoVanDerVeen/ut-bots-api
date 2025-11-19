require "test_helper"

class ColoursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @colour = create(:colour)
  end

  test "should get index" do
    get colours_url

    assert_response :success
  end
end
