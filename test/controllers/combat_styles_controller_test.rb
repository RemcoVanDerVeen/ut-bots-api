require "test_helper"

class CombatStylesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @combat_style = create(:combat_style)
  end

  test "should get index" do
    get combat_styles_url

    assert_response :success
  end
end
