require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | Student Organization of Latinx (SOL)"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | Student Organization of Latinx (SOL)"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Student Organization of Latinx (SOL)"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Student Organization of Latinx (SOL)"

  end

  test "Random Image Generator" do
    get home_path
    assert_equal (0..4).to_a.shuffle.first, assigns(:rand_result)
  end

end
