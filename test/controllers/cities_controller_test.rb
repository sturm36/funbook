require 'test_helper'

class CitiesControllerTest < ActionController::TestCase
  test "should get index_cities" do
    get :index_cities
    assert_response :success
  end

end
