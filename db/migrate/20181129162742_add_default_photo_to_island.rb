class AddDefaultPhotoToIsland < ActiveRecord::Migration[5.2]
  def change
    add_column :islands, :default_photo, :string
  end
end
