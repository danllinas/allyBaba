class AddColumnsShippingCcZipToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :shipping_address1, :string
    add_column :deals, :shipping_address2, :string
    add_column :deals, :city, :string
    add_column :deals, :state, :string
    add_column :deals, :zipcode, :string
    add_column :deals, :cc_info, :string
  end
end
