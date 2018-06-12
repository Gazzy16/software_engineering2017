require 'test_helper'

class MembersTeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @members_team = members_teams(:one)
  end

  test "should get index" do
    get members_teams_url
    assert_response :success
  end

  test "should get new" do
    get new_members_team_url
    assert_response :success
  end

  test "should create members_team" do
    assert_difference('MembersTeam.count') do
      post members_teams_url, params: { members_team: { member_id: @members_team.member_id, team_id: @members_team.team_id } }
    end

    assert_redirected_to members_team_url(MembersTeam.last)
  end

  test "should show members_team" do
    get members_team_url(@members_team)
    assert_response :success
  end

  test "should get edit" do
    get edit_members_team_url(@members_team)
    assert_response :success
  end

  test "should update members_team" do
    patch members_team_url(@members_team), params: { members_team: { member_id: @members_team.member_id, team_id: @members_team.team_id } }
    assert_redirected_to members_team_url(@members_team)
  end

  test "should destroy members_team" do
    assert_difference('MembersTeam.count', -1) do
      delete members_team_url(@members_team)
    end

    assert_redirected_to members_teams_url
  end
end
