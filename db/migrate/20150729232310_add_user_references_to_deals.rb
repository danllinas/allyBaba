class AddUserReferencesToDeals < ActiveRecord::Migration
  def change
    add_reference :deals, :user, index: true, foreign_key: true

    change_table :deals do |t|
      t.remove :wholesale_price, :retail_price
    end

  end
end
