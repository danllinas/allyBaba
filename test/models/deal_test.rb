require 'test_helper'

class DealTest < ActiveSupport::TestCase

def setup
  @user = users(:michael)
  @deal = @user.deals.build(url: "http://www.example.com", title: "Test Deal", retail_price_cents: 2000, wholesale_price_cents: 1000, image: sample_file, delivery_method: "Shyp", minimum_bids: 10, estimated_delivery: Date.today)
end
