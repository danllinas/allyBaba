class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :url
      t.boolean :expired
      t.integer :min_order
      t.string :title
      t.string :address
      t.string :city
      t.string :state
      t.money :retail_price
      t.money :wholesale_price
      t.binary :image

      t.timestamps null: false
    end
  end
end
