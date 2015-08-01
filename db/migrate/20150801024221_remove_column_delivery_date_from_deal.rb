class RemoveColumnDeliveryDateFromDeal < ActiveRecord::Migration
  def change
    remove_column :deals, :delivery_date, :string
  end
end
