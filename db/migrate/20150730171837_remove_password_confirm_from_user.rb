class RemovePasswordConfirmFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :password_confirm, :string
  end
end
