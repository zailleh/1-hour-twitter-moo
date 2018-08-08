require 'test_helper'

class MoosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @moo = moos(:one)
  end

  test "should get index" do
    get moos_url
    assert_response :success
  end

  test "should get new" do
    get new_moo_url
    assert_response :success
  end

  test "should create moo" do
    assert_difference('Moo.count') do
      post moos_url, params: { moo: { content: @moo.content } }
    end

    assert_redirected_to moo_url(Moo.last)
  end

  test "should show moo" do
    get moo_url(@moo)
    assert_response :success
  end

  test "should get edit" do
    get edit_moo_url(@moo)
    assert_response :success
  end

  test "should update moo" do
    patch moo_url(@moo), params: { moo: { content: @moo.content } }
    assert_redirected_to moo_url(@moo)
  end

  test "should destroy moo" do
    assert_difference('Moo.count', -1) do
      delete moo_url(@moo)
    end

    assert_redirected_to moos_url
  end
end
