require 'test_helper'

class DealTest < ActiveSupport::TestCase
  def setup
    @user = users(:michael)
    @deal = @user.deals.build(url: "http://www.example.com", title: "Test Deal", retail_price_cents: 2000, wholesale_price_cents: 1000, image: sample_file, delivery_method: "Shyp", minimum_bids: 10, estimated_delivery: Date.today)
  end

  test "should be valid" do
    @deal.valid?
  end

  test "deal should belong to organizer" do
    assert_equal @deal.organizer, @user
  end

  test "monetize should change cents to dollars" do
    assert_equal @deal.wholesale_price, 10.00
    assert_equal @deal.retail_price, 20.00
  end

  test "validates image" do
    @deal.image = sample_file("Alibaba Items.txt")
    refute @deal.valid?
  end

  test "url should be present" do
    @deal.url = ""
    refute @deal.valid?
  end
end
