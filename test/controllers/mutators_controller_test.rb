require "test_helper"

class MutatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mutator = mutators(:one)
  end

  test "should get index" do
    get mutators_url
    assert_response :success
  end

  test "should get new" do
    get new_mutator_url
    assert_response :success
  end

  test "should create mutator" do
    assert_difference("Mutator.count") do
      post mutators_url, params: { mutator: { description: @mutator.description, name: @mutator.name } }
    end

    assert_redirected_to mutator_url(Mutator.last)
  end

  test "should show mutator" do
    get mutator_url(@mutator)
    assert_response :success
  end

  test "should get edit" do
    get edit_mutator_url(@mutator)
    assert_response :success
  end

  test "should update mutator" do
    patch mutator_url(@mutator), params: { mutator: { description: @mutator.description, name: @mutator.name } }
    assert_redirected_to mutator_url(@mutator)
  end

  test "should destroy mutator" do
    assert_difference("Mutator.count", -1) do
      delete mutator_url(@mutator)
    end

    assert_redirected_to mutators_url
  end
end
