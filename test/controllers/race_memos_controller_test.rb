require "test_helper"

class RaceMemosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get race_memos_index_url
    assert_response :success
  end

  test "should get new" do
    get race_memos_new_url
    assert_response :success
  end

  test "should get create" do
    get race_memos_create_url
    assert_response :success
  end

  test "should get show" do
    get race_memos_show_url
    assert_response :success
  end

  test "should get edit" do
    get race_memos_edit_url
    assert_response :success
  end

  test "should get update" do
    get race_memos_update_url
    assert_response :success
  end

  test "should get destroy" do
    get race_memos_destroy_url
    assert_response :success
  end
end
