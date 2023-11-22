require "test_helper"

class AuthorablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @authorable = authorables(:one)
  end

  test "should get index" do
    get authorables_url
    assert_response :success
  end

  test "should get new" do
    get new_authorable_url
    assert_response :success
  end

  test "should create authorable" do
    assert_difference("Authorable.count") do
      post authorables_url, params: { authorable: {  } }
    end

    assert_redirected_to authorable_url(Authorable.last)
  end

  test "should show authorable" do
    get authorable_url(@authorable)
    assert_response :success
  end

  test "should get edit" do
    get edit_authorable_url(@authorable)
    assert_response :success
  end

  test "should update authorable" do
    patch authorable_url(@authorable), params: { authorable: {  } }
    assert_redirected_to authorable_url(@authorable)
  end

  test "should destroy authorable" do
    assert_difference("Authorable.count", -1) do
      delete authorable_url(@authorable)
    end

    assert_redirected_to authorables_url
  end
end
