class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :island, foreign_key: true
      t.integer :total_price
      t.date :start_at
      t.date :end_at
      t.references :user, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
