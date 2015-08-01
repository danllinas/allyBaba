class RemoveColumnsExpiredMinOrderFromDeals < ActiveRecord::Migration
  def change
    remove_column :deals, :expired, :string
    remove_column :deals, :min_order, :string
  end
end
