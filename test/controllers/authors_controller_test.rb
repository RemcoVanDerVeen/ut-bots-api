require "test_helper"

class AuthorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @author = create(:author)
  end

  test "should get index" do
    get authors_url

    assert_response :success
  end

  test "should get new" do
    get new_author_url

    assert_response :success
  end

  test "should create author" do
    assert_difference("Author.count") do
      post authors_url, params: { author: { name: "New Name", nickname: "newauthor" } }
    end

    new_author = Author.find_by(nickname: "newauthor")

    assert_redirected_to author_url(new_author)
  end

  test "should show author" do
    get author_url(@author)

    assert_response :success
  end

  test "should get edit" do
    get edit_author_url(@author)

    assert_response :success
  end

  test "should update author" do
    patch author_url(@author), params: { author: { name: @author.name, nickname: @author.nickname } }

    assert_redirected_to author_url(@author)
  end

  test "should destroy author" do
    assert_difference("Author.count", -1) do
      delete author_url(@author)
    end

    assert_redirected_to authors_url
  end
end
