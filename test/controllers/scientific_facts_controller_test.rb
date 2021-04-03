require "test_helper"

class ScientificFactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scientific_fact = scientific_facts(:one)
  end

  test "should get index" do
    get scientific_facts_url
    assert_response :success
  end

  test "should get new" do
    get new_scientific_fact_url
    assert_response :success
  end

  test "should create scientific_fact" do
    assert_difference('ScientificFact.count') do
      post scientific_facts_url, params: { scientific_fact: { scienctific_fact_definition: @scientific_fact.scienctific_fact_definition, scientific_fact_title: @scientific_fact.scientific_fact_title } }
    end

    assert_redirected_to scientific_fact_url(ScientificFact.last)
  end

  test "should show scientific_fact" do
    get scientific_fact_url(@scientific_fact)
    assert_response :success
  end

  test "should get edit" do
    get edit_scientific_fact_url(@scientific_fact)
    assert_response :success
  end

  test "should update scientific_fact" do
    patch scientific_fact_url(@scientific_fact), params: { scientific_fact: { scienctific_fact_definition: @scientific_fact.scienctific_fact_definition, scientific_fact_title: @scientific_fact.scientific_fact_title } }
    assert_redirected_to scientific_fact_url(@scientific_fact)
  end

  test "should destroy scientific_fact" do
    assert_difference('ScientificFact.count', -1) do
      delete scientific_fact_url(@scientific_fact)
    end

    assert_redirected_to scientific_facts_url
  end
end
