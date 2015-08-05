class AddStrypeEmailToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :stripeEmail, :string
  end
end
