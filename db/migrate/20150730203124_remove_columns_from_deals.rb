class RemoveColumnsFromDeals < ActiveRecord::Migration
  def change
    remove_column :deals, :address, :string
    remove_column :deals, :city, :string
    remove_column :deals, :state, :string
  end
end
