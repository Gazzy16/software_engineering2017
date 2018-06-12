require 'test_helper'

class TemsToMembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tems_to_member = tems_to_members(:one)
  end

  test "should get index" do
    get tems_to_members_url
    assert_response :success
  end

  test "should get new" do
    get new_tems_to_member_url
    assert_response :success
  end

  test "should create tems_to_member" do
    assert_difference('TemsToMember.count') do
      post tems_to_members_url, params: { tems_to_member: { member_name: @tems_to_member.member_name, team_color: @tems_to_member.team_color } }
    end

    assert_redirected_to tems_to_member_url(TemsToMember.last)
  end

  test "should show tems_to_member" do
    get tems_to_member_url(@tems_to_member)
    assert_response :success
  end

  test "should get edit" do
    get edit_tems_to_member_url(@tems_to_member)
    assert_response :success
  end

  test "should update tems_to_member" do
    patch tems_to_member_url(@tems_to_member), params: { tems_to_member: { member_name: @tems_to_member.member_name, team_color: @tems_to_member.team_color } }
    assert_redirected_to tems_to_member_url(@tems_to_member)
  end

  test "should destroy tems_to_member" do
    assert_difference('TemsToMember.count', -1) do
      delete tems_to_member_url(@tems_to_member)
    end

    assert_redirected_to tems_to_members_url
  end
end
