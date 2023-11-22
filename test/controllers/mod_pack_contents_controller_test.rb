require "test_helper"

class ModPackContentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mod_pack_content = mod_pack_contents(:one)
  end

  test "should get index" do
    get mod_pack_contents_url
    assert_response :success
  end

  test "should get new" do
    get new_mod_pack_content_url
    assert_response :success
  end

  test "should create mod_pack_content" do
    assert_difference("ModPackContent.count") do
      post mod_pack_contents_url, params: { mod_pack_content: {  } }
    end

    assert_redirected_to mod_pack_content_url(ModPackContent.last)
  end

  test "should show mod_pack_content" do
    get mod_pack_content_url(@mod_pack_content)
    assert_response :success
  end

  test "should get edit" do
    get edit_mod_pack_content_url(@mod_pack_content)
    assert_response :success
  end

  test "should update mod_pack_content" do
    patch mod_pack_content_url(@mod_pack_content), params: { mod_pack_content: {  } }
    assert_redirected_to mod_pack_content_url(@mod_pack_content)
  end

  test "should destroy mod_pack_content" do
    assert_difference("ModPackContent.count", -1) do
      delete mod_pack_content_url(@mod_pack_content)
    end

    assert_redirected_to mod_pack_contents_url
  end
end
