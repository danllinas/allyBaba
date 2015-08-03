class AddColumnsBuyerAddressCcZipToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :buyer_address1, :string
    add_column :orders, :buyer_address2, :string
    add_column :orders, :buyer_city, :string
    add_column :orders, :buyer_state, :string
    add_column :orders, :buyer_cc_info, :string
    add_column :orders, :buyer_zipcode, :string
  end
end
