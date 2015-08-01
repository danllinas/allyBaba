class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :address2, :string
    add_column :users, :name_on_card, :string
    add_column :users, :card_number, :string
    add_column :users, :expiration_date, :string
    add_column :users, :billing_zip, :string
  end
end
