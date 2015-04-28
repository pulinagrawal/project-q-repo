require 'test_helper'

class StatsControllerTest < ActionController::TestCase
    test "should get show" do
        session[:profile_id] = 1
        get :show
        assert_response :success
    end
end
