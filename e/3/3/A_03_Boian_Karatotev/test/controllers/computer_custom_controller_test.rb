require 'test_helper'

class ComputerCustomControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get computer_custom_index_url
    assert_response :success
  end

end
