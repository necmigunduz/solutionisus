require "application_system_test_case"

class SocialFactsTest < ApplicationSystemTestCase
  setup do
    @social_fact = social_facts(:one)
  end

  test "visiting the index" do
    visit social_facts_url
    assert_selector "h1", text: "Social Facts"
  end

  test "creating a Social fact" do
    visit social_facts_url
    click_on "New Social Fact"

    fill_in "Social fact definition", with: @social_fact.social_fact_definition
    fill_in "Social fact title", with: @social_fact.social_fact_title
    click_on "Create Social fact"

    assert_text "Social fact was successfully created"
    click_on "Back"
  end

  test "updating a Social fact" do
    visit social_facts_url
    click_on "Edit", match: :first

    fill_in "Social fact definition", with: @social_fact.social_fact_definition
    fill_in "Social fact title", with: @social_fact.social_fact_title
    click_on "Update Social fact"

    assert_text "Social fact was successfully updated"
    click_on "Back"
  end

  test "destroying a Social fact" do
    visit social_facts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Social fact was successfully destroyed"
  end
end
