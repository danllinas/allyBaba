class AddColumnsAddress1Address2CityStateCcInfoToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :shipping_address1, :string
    add_column :orders, :shipping_address2, :string
    add_column :orders, :city, :string
    add_column :orders, :state, :string
    add_column :orders, :cc_info, :string
  end
end
