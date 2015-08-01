class RenamePriceColumns < ActiveRecord::Migration
  def change
    rename_column :deals, :wholesale_price, :wholesale_price_cents
    rename_column :deals, :retail_price, :retail_price_cents
  end
end
