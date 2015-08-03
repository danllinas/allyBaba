class RemoveColumnsShippingZipCcFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :shipping_address1, :string
    remove_column :orders, :shipping_address2, :string
    remove_column :orders, :city, :string
    remove_column :orders, :state, :string
    remove_column :orders, :cc_info, :string
    remove_column :orders, :zipcode, :string
  end
end
