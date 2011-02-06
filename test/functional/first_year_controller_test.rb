# coding: UTF-8

require 'test_helper'

class FirstYearControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
