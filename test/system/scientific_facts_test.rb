require "application_system_test_case"

class ScientificFactsTest < ApplicationSystemTestCase
  setup do
    @scientific_fact = scientific_facts(:one)
  end

  test "visiting the index" do
    visit scientific_facts_url
    assert_selector "h1", text: "Scientific Facts"
  end

  test "creating a Scientific fact" do
    visit scientific_facts_url
    click_on "New Scientific Fact"

    fill_in "Scienctific fact definition", with: @scientific_fact.scienctific_fact_definition
    fill_in "Scientific fact title", with: @scientific_fact.scientific_fact_title
    click_on "Create Scientific fact"

    assert_text "Scientific fact was successfully created"
    click_on "Back"
  end

  test "updating a Scientific fact" do
    visit scientific_facts_url
    click_on "Edit", match: :first

    fill_in "Scienctific fact definition", with: @scientific_fact.scienctific_fact_definition
    fill_in "Scientific fact title", with: @scientific_fact.scientific_fact_title
    click_on "Update Scientific fact"

    assert_text "Scientific fact was successfully updated"
    click_on "Back"
  end

  test "destroying a Scientific fact" do
    visit scientific_facts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Scientific fact was successfully destroyed"
  end
end
