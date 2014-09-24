require 'test_helper'

class TheTeamsControllerTest < ActionController::TestCase
  setup do
    @the_team = the_teams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:the_teams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create the_team" do
    assert_difference('TheTeam.count') do
      post :create, the_team: {  }
    end

    assert_redirected_to the_team_path(assigns(:the_team))
  end

  test "should show the_team" do
    get :show, id: @the_team
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @the_team
    assert_response :success
  end

  test "should update the_team" do
    patch :update, id: @the_team, the_team: {  }
    assert_redirected_to the_team_path(assigns(:the_team))
  end

  test "should destroy the_team" do
    assert_difference('TheTeam.count', -1) do
      delete :destroy, id: @the_team
    end

    assert_redirected_to the_teams_path
  end
end
