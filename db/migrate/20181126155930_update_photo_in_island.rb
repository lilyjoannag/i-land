class UpdatePhotoInIsland < ActiveRecord::Migration[5.2]
  def change
    remove_column(:islands, :photo, :string)
    add_column(:islands, :photos, :json)
  end
end

