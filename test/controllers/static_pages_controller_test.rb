require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get root" do
    get root_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end # root
  
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end # setup
  
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end # home

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end # help

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end # about

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end # contact
  
end # class