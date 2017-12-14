require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  test "should get student_details" do
    get :student_details
    assert_response :success
  end

end
