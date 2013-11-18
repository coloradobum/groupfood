require 'test_helper'

class TripMembersControllerTest < ActionController::TestCase
  setup do
    @trip_member = trip_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trip_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trip_member" do
    assert_difference('TripMember.count') do
      post :create, trip_member: { description: @trip_member.description, expenses: @trip_member.expenses, name: @trip_member.name, trip_id: @trip_member.trip_id }
    end

    assert_redirected_to trip_member_path(assigns(:trip_member))
  end

  test "should show trip_member" do
    get :show, id: @trip_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trip_member
    assert_response :success
  end

  test "should update trip_member" do
    patch :update, id: @trip_member, trip_member: { description: @trip_member.description, expenses: @trip_member.expenses, name: @trip_member.name, trip_id: @trip_member.trip_id }
    assert_redirected_to trip_member_path(assigns(:trip_member))
  end

  test "should destroy trip_member" do
    assert_difference('TripMember.count', -1) do
      delete :destroy, id: @trip_member
    end

    assert_redirected_to trip_members_path
  end
end
