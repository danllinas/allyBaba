class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :orders, :card_token, :stripeToken
  end
end
