require "application_system_test_case"

class SolutionSuggestionsTest < ApplicationSystemTestCase
  setup do
    @solution_suggestion = solution_suggestions(:one)
  end

  test "visiting the index" do
    visit solution_suggestions_url
    assert_selector "h1", text: "Solution Suggestions"
  end

  test "creating a Solution suggestion" do
    visit solution_suggestions_url
    click_on "New Solution Suggestion"

    fill_in "Problem", with: @solution_suggestion.problem_id
    fill_in "User", with: @solution_suggestion.user_id
    click_on "Create Solution suggestion"

    assert_text "Solution suggestion was successfully created"
    click_on "Back"
  end

  test "updating a Solution suggestion" do
    visit solution_suggestions_url
    click_on "Edit", match: :first

    fill_in "Problem", with: @solution_suggestion.problem_id
    fill_in "User", with: @solution_suggestion.user_id
    click_on "Update Solution suggestion"

    assert_text "Solution suggestion was successfully updated"
    click_on "Back"
  end

  test "destroying a Solution suggestion" do
    visit solution_suggestions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Solution suggestion was successfully destroyed"
  end
end
