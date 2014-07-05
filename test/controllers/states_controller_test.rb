require 'test_helper'

class StatesControllerTest < ActionController::TestCase
  test "should get index_states" do
    get :index_states
    assert_response :success
  end

end
