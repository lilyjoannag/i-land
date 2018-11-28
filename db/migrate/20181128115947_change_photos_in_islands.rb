class ChangePhotosInIslands < ActiveRecord::Migration[5.2]
  def change
    remove_column :islands, :photos
    add_column  :islands, :photos, :text, array: true, default: []
  end
end
