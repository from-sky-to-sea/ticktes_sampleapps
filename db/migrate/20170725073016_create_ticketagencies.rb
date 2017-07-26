class CreateTicketagencies < ActiveRecord::Migration[5.0]
  def change
    create_table :ticketagencies do |t|
      t.string :name

      t.timestamps
    end
  end
end
