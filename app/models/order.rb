class Order < ActiveRecord::Base
  belongs_to    :buyer, foreign_key: "user_id", class_name: "User"
  belongs_to    :deal

  after_create :increment_deal_count

  def process_payment
    @deal = Deal.last
    customer = Stripe::Customer.create email: stripeEmail,
                                       card: stripeToken

    Stripe::Charge.create customer: customer.id,
                          amount: @deal.wholesale_price_cents,
                          description: @deal.title,
                          currency: 'usd'

  end

  def increment_deal_count
    deal.total_bids += 1
    deal.save
  end
end
