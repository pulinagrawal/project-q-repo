require 'test_helper'

class QuizzesControllerTest < ActionController::TestCase
    test "should get show" do
        session[:profile_id] = 1
        get :show, {:id => 1}
        assert_response :success
    end
end
