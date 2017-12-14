require 'test_helper'

class BatchesControllerTest < ActionController::TestCase
  test "should get batches" do
    get :batches
    assert_response :success
  end

  test "should get batch_students" do
    get :batch_students
    assert_response :success
  end

end
