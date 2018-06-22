require 'test_helper'

class ContactControllerTest < ActionDispatch::IntegrationTest
  test "should get contactindex" do
    get contact_contactindex_url
    assert_response :success
  end

end
