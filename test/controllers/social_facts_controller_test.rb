require "test_helper"

class SocialFactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @social_fact = social_facts(:one)
  end

  test "should get index" do
    get social_facts_url
    assert_response :success
  end

  test "should get new" do
    get new_social_fact_url
    assert_response :success
  end

  test "should create social_fact" do
    assert_difference('SocialFact.count') do
      post social_facts_url, params: { social_fact: { social_fact_definition: @social_fact.social_fact_definition, social_fact_title: @social_fact.social_fact_title } }
    end

    assert_redirected_to social_fact_url(SocialFact.last)
  end

  test "should show social_fact" do
    get social_fact_url(@social_fact)
    assert_response :success
  end

  test "should get edit" do
    get edit_social_fact_url(@social_fact)
    assert_response :success
  end

  test "should update social_fact" do
    patch social_fact_url(@social_fact), params: { social_fact: { social_fact_definition: @social_fact.social_fact_definition, social_fact_title: @social_fact.social_fact_title } }
    assert_redirected_to social_fact_url(@social_fact)
  end

  test "should destroy social_fact" do
    assert_difference('SocialFact.count', -1) do
      delete social_fact_url(@social_fact)
    end

    assert_redirected_to social_facts_url
  end
end
