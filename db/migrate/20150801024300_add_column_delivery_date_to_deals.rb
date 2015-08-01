class AddColumnDeliveryDateToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :estimated_delivery, :date
  end
end
