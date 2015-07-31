class AddColumnsDelMethEStTimeTimeRemTotBidToDeal < ActiveRecord::Migration
  def change
    add_column :deals, :delivery_method, :string
    add_column :deals, :delivery_date, :string
    add_column :deals, :deal_time_remaining, :string
    add_column :deals, :minimum_bids, :string
    add_column :deals, :total_bids, :string
  end
end
