class RemoveColumnsLotsOfThemFromDeals < ActiveRecord::Migration
  def change
    remove_column :deals, :shipping_address1, :string
    remove_column :deals, :shipping_address2, :string
    remove_column :deals, :city, :string
    remove_column :deals, :state, :string
    remove_column :deals, :zipcode, :string
    remove_column :deals, :cc_info, :string
  end
end
