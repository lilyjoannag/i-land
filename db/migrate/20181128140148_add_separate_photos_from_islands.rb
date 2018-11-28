class AddSeparatePhotosFromIslands < ActiveRecord::Migration[5.2]
  def change
    add_column :islands, :photo_1, :string
    add_column :islands, :photo_2, :string
    add_column :islands, :photo_3, :string
  end
end
