class RemoveColumsAddressCardZipFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :address2, :string
    remove_column :users, :name_on_card, :string
    remove_column :users, :card_number, :string
    remove_column :users, :expiration_date, :string
    remove_column :users, :billing_zip, :string
  end
end
