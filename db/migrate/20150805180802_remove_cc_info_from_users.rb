class RemoveCcInfoFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :cc_info, :string
  end
end
