require "test_helper"

class SolutionSuggestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solution_suggestion = solution_suggestions(:one)
  end

  test "should get index" do
    get solution_suggestions_url
    assert_response :success
  end

  test "should get new" do
    get new_solution_suggestion_url
    assert_response :success
  end

  test "should create solution_suggestion" do
    assert_difference('SolutionSuggestion.count') do
      post solution_suggestions_url, params: { solution_suggestion: { problem_id: @solution_suggestion.problem_id, user_id: @solution_suggestion.user_id } }
    end

    assert_redirected_to solution_suggestion_url(SolutionSuggestion.last)
  end

  test "should show solution_suggestion" do
    get solution_suggestion_url(@solution_suggestion)
    assert_response :success
  end

  test "should get edit" do
    get edit_solution_suggestion_url(@solution_suggestion)
    assert_response :success
  end

  test "should update solution_suggestion" do
    patch solution_suggestion_url(@solution_suggestion), params: { solution_suggestion: { problem_id: @solution_suggestion.problem_id, user_id: @solution_suggestion.user_id } }
    assert_redirected_to solution_suggestion_url(@solution_suggestion)
  end

  test "should destroy solution_suggestion" do
    assert_difference('SolutionSuggestion.count', -1) do
      delete solution_suggestion_url(@solution_suggestion)
    end

    assert_redirected_to solution_suggestions_url
  end
end
