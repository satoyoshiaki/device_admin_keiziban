require 'test_helper'

class GungemesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gungeme = gungemes(:one)
  end

  test "should get index" do
    get gungemes_url
    assert_response :success
  end

  test "should get new" do
    get new_gungeme_url
    assert_response :success
  end

  test "should create gungeme" do
    assert_difference('Gungeme.count') do
      post gungemes_url, params: { gungeme: { comment: @gungeme.comment, friendid: @gungeme.friendid, machine: @gungeme.machine, name: @gungeme.name, purpose: @gungeme.purpose, vc: @gungeme.vc } }
    end

    assert_redirected_to gungeme_url(Gungeme.last)
  end

  test "should show gungeme" do
    get gungeme_url(@gungeme)
    assert_response :success
  end

  test "should get edit" do
    get edit_gungeme_url(@gungeme)
    assert_response :success
  end

  test "should update gungeme" do
    patch gungeme_url(@gungeme), params: { gungeme: { comment: @gungeme.comment, friendid: @gungeme.friendid, machine: @gungeme.machine, name: @gungeme.name, purpose: @gungeme.purpose, vc: @gungeme.vc } }
    assert_redirected_to gungeme_url(@gungeme)
  end

  test "should destroy gungeme" do
    assert_difference('Gungeme.count', -1) do
      delete gungeme_url(@gungeme)
    end

    assert_redirected_to gungemes_url
  end
end
