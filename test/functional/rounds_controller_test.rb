# coding: UTF-8

require 'test_helper'

class RoundsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
