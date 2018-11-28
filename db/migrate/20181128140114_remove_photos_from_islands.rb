class RemovePhotosFromIslands < ActiveRecord::Migration[5.2]
  def change
    remove_column :islands, :photos, :text
  end
end
