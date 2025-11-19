require "test_helper"

class BotlistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @botlist = create(:botlist)
  end

  test "should get index" do
    get botlists_url

    assert_response :success
  end

  test "should get new" do
    get new_botlist_url

    assert_response :success
  end

  test "should create botlist" do
    assert_difference("Botlist.count") do
      post botlists_url, params: { botlist: { name: "New Botlist", description: "Test description" } }
    end

    assert_redirected_to botlist_url(Botlist.last)
  end

  test "should show botlist" do
    get botlist_url(@botlist)

    assert_response :success
  end

  test "should get edit" do
    get edit_botlist_url(@botlist)

    assert_response :success
  end

  test "should update botlist" do
    patch botlist_url(@botlist), params: { botlist: { name: @botlist.name } }

    assert_redirected_to botlist_url(@botlist)
  end

  test "should destroy botlist" do
    assert_difference("Botlist.count", -1) do
      delete botlist_url(@botlist)
    end

    assert_redirected_to botlists_url
  end
end
