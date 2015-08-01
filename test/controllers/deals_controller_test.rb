require 'test_helper'

class DealsControllerTest < ActionController::TestCase
  setup do
    @deal = deals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new, id: @deal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deal
    assert_response :success
  end

  test "should get show" do
    get :show, id: @deal
    assert_response :success
  end

  # test "deal expiration is 30 days from now" do
  #   @deal.save
  #   assert_equal @deal.deal_expiration, 30.days.from_now
  # end

end
