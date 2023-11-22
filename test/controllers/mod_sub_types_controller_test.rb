require "test_helper"

class ModSubTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mod_sub_type = mod_sub_types(:one)
  end

  test "should get index" do
    get mod_sub_types_url
    assert_response :success
  end

  test "should get new" do
    get new_mod_sub_type_url
    assert_response :success
  end

  test "should create mod_sub_type" do
    assert_difference("ModSubType.count") do
      post mod_sub_types_url, params: { mod_sub_type: { name: @mod_sub_type.name } }
    end

    assert_redirected_to mod_sub_type_url(ModSubType.last)
  end

  test "should show mod_sub_type" do
    get mod_sub_type_url(@mod_sub_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_mod_sub_type_url(@mod_sub_type)
    assert_response :success
  end

  test "should update mod_sub_type" do
    patch mod_sub_type_url(@mod_sub_type), params: { mod_sub_type: { name: @mod_sub_type.name } }
    assert_redirected_to mod_sub_type_url(@mod_sub_type)
  end

  test "should destroy mod_sub_type" do
    assert_difference("ModSubType.count", -1) do
      delete mod_sub_type_url(@mod_sub_type)
    end

    assert_redirected_to mod_sub_types_url
  end
end
