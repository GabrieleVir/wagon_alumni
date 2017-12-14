require 'test_helper'

class AjaxControllerTest < ActionDispatch::IntegrationTest
  test "should get modal_students" do
    get ajax_modal_students_url
    assert_response :success
  end

end
