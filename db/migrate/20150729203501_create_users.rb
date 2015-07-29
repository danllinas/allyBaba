class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :password_confirm
      t.string :address
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end
