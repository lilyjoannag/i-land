class AddAddressToIslands < ActiveRecord::Migration[5.2]
  def change
    add_column :islands, :address, :string
  end
end
