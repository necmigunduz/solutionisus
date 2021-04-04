require "test_helper"

class ApprovalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @approval = approvals(:one)
  end

  test "should get index" do
    get approvals_url
    assert_response :success
  end

  test "should get new" do
    get new_approval_url
    assert_response :success
  end

  test "should create approval" do
    assert_difference('Approval.count') do
      post approvals_url, params: { approval: { solution_suggestion_id: @approval.solution_suggestion_id, user_id: @approval.user_id } }
    end

    assert_redirected_to approval_url(Approval.last)
  end

  test "should show approval" do
    get approval_url(@approval)
    assert_response :success
  end

  test "should get edit" do
    get edit_approval_url(@approval)
    assert_response :success
  end

  test "should update approval" do
    patch approval_url(@approval), params: { approval: { solution_suggestion_id: @approval.solution_suggestion_id, user_id: @approval.user_id } }
    assert_redirected_to approval_url(@approval)
  end

  test "should destroy approval" do
    assert_difference('Approval.count', -1) do
      delete approval_url(@approval)
    end

    assert_redirected_to approvals_url
  end
end
