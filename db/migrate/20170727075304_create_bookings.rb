class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :event, foreign_key: true
      t.references :ticketagency, foreign_key: true
      t.string :booking_displayname
      t.string :condition
      t.string :detail

      t.timestamps
    end
  end
end
