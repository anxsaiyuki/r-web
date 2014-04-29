require 'test_helper'

class ModuleControllerTest < ActionController::TestCase
  test "should get banner" do
    get :banner
    assert_response :success
  end

end
