require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest


  def navibar_test
    assert_select "a[href=?]", "/static_pages/home.html"
    assert_select "a[href=?]", "/static_pages/about.html"
    assert_select "a[href=?]", "/static_pages/help.html"
  end
  
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Ruby on Rails Tutorial Sample App"
  end
end