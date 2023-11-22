require "test_helper"

class ModTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mod_type = mod_types(:one)
  end

  test "should get index" do
    get mod_types_url
    assert_response :success
  end

  test "should get new" do
    get new_mod_type_url
    assert_response :success
  end

  test "should create mod_type" do
    assert_difference("ModType.count") do
      post mod_types_url, params: { mod_type: { name: @mod_type.name } }
    end

    assert_redirected_to mod_type_url(ModType.last)
  end

  test "should show mod_type" do
    get mod_type_url(@mod_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_mod_type_url(@mod_type)
    assert_response :success
  end

  test "should update mod_type" do
    patch mod_type_url(@mod_type), params: { mod_type: { name: @mod_type.name } }
    assert_redirected_to mod_type_url(@mod_type)
  end

  test "should destroy mod_type" do
    assert_difference("ModType.count", -1) do
      delete mod_type_url(@mod_type)
    end

    assert_redirected_to mod_types_url
  end
end
