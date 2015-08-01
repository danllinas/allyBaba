class RemoveColumnImagesFromDeals < ActiveRecord::Migration
  def change
    remove_column :deals, :image, :binary
  end
end
