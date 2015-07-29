class AddColumnsToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :retail_price, :integer
    add_column :deals, :wholesale_price, :integer
  end
end
