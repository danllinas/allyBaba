class AddColumnsMinBidTotBidToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :minimum_bids, :integer
    add_column :deals, :total_bids, :integer
  end
end
