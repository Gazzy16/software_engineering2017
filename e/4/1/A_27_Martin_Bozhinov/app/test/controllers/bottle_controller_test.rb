require 'test_helper'

class BottleControllerTest < ActionDispatch::IntegrationTest
  test "should get color:string" do
    get bottle_color:string_url
    assert_response :success
  end

  test "should get brand:string" do
    get bottle_brand:string_url
    assert_response :success
  end

  test "should get table_id:integer" do
    get bottle_table_id:integer_url
    assert_response :success
  end

end
