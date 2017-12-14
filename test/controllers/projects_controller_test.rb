require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  test "should get projects" do
    get :projects
    assert_response :success
  end

  test "should get project_details" do
    get :project_details
    assert_response :success
  end

end
