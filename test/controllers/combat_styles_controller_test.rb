require "test_helper"

class CombatStylesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @combat_style = combat_styles(:one)
  end

  test "should get index" do
    get combat_styles_url
    assert_response :success
  end

  test "should get new" do
    get new_combat_style_url
    assert_response :success
  end

  test "should create combat_style" do
    assert_difference("CombatStyle.count") do
      post combat_styles_url, params: { combat_style: {  } }
    end

    assert_redirected_to combat_style_url(CombatStyle.last)
  end

  test "should show combat_style" do
    get combat_style_url(@combat_style)
    assert_response :success
  end

  test "should get edit" do
    get edit_combat_style_url(@combat_style)
    assert_response :success
  end

  test "should update combat_style" do
    patch combat_style_url(@combat_style), params: { combat_style: {  } }
    assert_redirected_to combat_style_url(@combat_style)
  end

  test "should destroy combat_style" do
    assert_difference("CombatStyle.count", -1) do
      delete combat_style_url(@combat_style)
    end

    assert_redirected_to combat_styles_url
  end
end
