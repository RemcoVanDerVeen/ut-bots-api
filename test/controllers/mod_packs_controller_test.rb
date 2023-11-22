require "test_helper"

class ModPacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mod_pack = mod_packs(:one)
  end

  test "should get index" do
    get mod_packs_url
    assert_response :success
  end

  test "should get new" do
    get new_mod_pack_url
    assert_response :success
  end

  test "should create mod_pack" do
    assert_difference("ModPack.count") do
      post mod_packs_url, params: { mod_pack: { name: @mod_pack.name } }
    end

    assert_redirected_to mod_pack_url(ModPack.last)
  end

  test "should show mod_pack" do
    get mod_pack_url(@mod_pack)
    assert_response :success
  end

  test "should get edit" do
    get edit_mod_pack_url(@mod_pack)
    assert_response :success
  end

  test "should update mod_pack" do
    patch mod_pack_url(@mod_pack), params: { mod_pack: { name: @mod_pack.name } }
    assert_redirected_to mod_pack_url(@mod_pack)
  end

  test "should destroy mod_pack" do
    assert_difference("ModPack.count", -1) do
      delete mod_pack_url(@mod_pack)
    end

    assert_redirected_to mod_packs_url
  end
end
