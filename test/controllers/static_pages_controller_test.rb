require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest


  def navibar_test
    assert_select "a[href=?]", "/static_pages/home.html"
    assert_select "a[href=?]", "/static_pages/about.html"
    assert_select "a[href=?]", "/static_pages/help.html"
  end
  
  test "function" do
    assigns(:random)
  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | Kevin's Self Website"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | Kevin's Self Website"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Kevin's Self Website"
  end

end