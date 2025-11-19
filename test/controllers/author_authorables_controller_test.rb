require "test_helper"

class AuthorAuthorablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @author_authorable = create(:author_authorable)
  end

  test "should get index" do
    get author_authorables_url

    assert_response :success
  end

  test "should get new" do
    get new_author_authorable_url

    assert_response :success
  end

  test "should create author_authorable" do
    author = create(:author)
    bot = create(:bot)

    assert_difference("AuthorAuthorable.count") do
      post author_authorables_url, params: { author_authorable: { author_id: author.id, authorable_type: "Bot", authorable_id: bot.id } }
    end

    assert_redirected_to author_authorable_url(AuthorAuthorable.last)
  end

  test "should show author_authorable" do
    get author_authorable_url(@author_authorable)

    assert_response :success
  end

  test "should get edit" do
    get edit_author_authorable_url(@author_authorable)

    assert_response :success
  end

  test "should update author_authorable" do
    patch author_authorable_url(@author_authorable), params: { author_authorable: { author_id: @author_authorable.author_id } }

    assert_redirected_to author_authorable_url(@author_authorable)
  end

  test "should destroy author_authorable" do
    assert_difference("AuthorAuthorable.count", -1) do
      delete author_authorable_url(@author_authorable)
    end

    assert_redirected_to author_authorables_url
  end
end
