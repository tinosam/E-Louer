require 'test_helper'

class MaisonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @maison = maisons(:one)
  end

  test "should get index" do
    get maisons_url
    assert_response :success
  end

  test "should get new" do
    get new_maison_url
    assert_response :success
  end

  test "should create maison" do
    assert_difference('Maison.count') do
      post maisons_url, params: { maison: {  } }
    end

    assert_redirected_to maison_url(Maison.last)
  end

  test "should show maison" do
    get maison_url(@maison)
    assert_response :success
  end

  test "should get edit" do
    get edit_maison_url(@maison)
    assert_response :success
  end

  test "should update maison" do
    patch maison_url(@maison), params: { maison: {  } }
    assert_redirected_to maison_url(@maison)
  end

  test "should destroy maison" do
    assert_difference('Maison.count', -1) do
      delete maison_url(@maison)
    end

    assert_redirected_to maisons_url
  end
end
