class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :basename
      t.string :agencies
      t.datetime :latest_update
      t.datetime :startdate
      t.datetime :enddate
      t.integer :price
      t.integer :availability

      t.timestamps
    end
  end
end
