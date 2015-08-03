class RemoveColumnsBuyerInfoFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :buyer_address1, :string
    remove_column :orders, :buyer_address2, :string
    remove_column :orders, :buyer_city, :string
    remove_column :orders, :buyer_state, :string
    remove_column :orders, :buyer_cc_info, :string
    remove_column :orders, :buyer_zipcode, :string
  end
end
