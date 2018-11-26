class CreateIslands < ActiveRecord::Migration[5.2]
  def change
    create_table :islands do |t|
      t.string :name
      t.integer :number_of_guests
      t.integer :price_per_night
      t.text :description
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
