require 'test_helper'

class DealsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "deal expiration is 30 days from now" do
    @deal.save
    assert_equal @deal.deal_expiration, 30.days.from_now
  end

end
