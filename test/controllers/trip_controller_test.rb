require 'test_helper'

class TripControllerTest < ActionController::TestCase
  test "should get add_person" do
    get :add_person
    assert_response :success
  end

  test "should get add_expense" do
    get :add_expense
    assert_response :success
  end

end
