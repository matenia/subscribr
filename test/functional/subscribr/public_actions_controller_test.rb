require 'test_helper'

module Subscribr
  class PublicActionsControllerTest < ActionController::TestCase
    test "should get register" do
      get :register
      assert_response :success
    end
  
  end
end
