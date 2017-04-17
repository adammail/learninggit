require 'test_helper'

class SushisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sushi = sushis(:one)
  end

  test "should get index" do
    get sushis_url
    assert_response :success
  end

  test "should get new" do
    get new_sushi_url
    assert_response :success
  end

  test "should create sushi" do
    assert_difference('Sushi.count') do
      post sushis_url, params: { sushi: { price: @sushi.price, type: @sushi.type } }
    end

    assert_redirected_to sushi_url(Sushi.last)
  end

  test "should show sushi" do
    get sushi_url(@sushi)
    assert_response :success
  end

  test "should get edit" do
    get edit_sushi_url(@sushi)
    assert_response :success
  end

  test "should update sushi" do
    patch sushi_url(@sushi), params: { sushi: { price: @sushi.price, type: @sushi.type } }
    assert_redirected_to sushi_url(@sushi)
  end

  test "should destroy sushi" do
    assert_difference('Sushi.count', -1) do
      delete sushi_url(@sushi)
    end

    assert_redirected_to sushis_url
  end
end
