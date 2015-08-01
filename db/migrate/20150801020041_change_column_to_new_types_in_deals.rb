class ChangeColumnToNewTypesInDeals < ActiveRecord::Migration
  def change
    remove_column :deals, :deal_time_remaining
    add_column :deals, :deal_expiration, :datetime
    remove_column :deals, :minimum_bids
    remove_column :deals, :total_bids
  end
end
