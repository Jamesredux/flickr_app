require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get groups" do
    get static_pages_groups_url
    assert_response :success
  end

  test "should get search" do 
  	get static_pages_search_url
  	assert_response :success
  end	
end
