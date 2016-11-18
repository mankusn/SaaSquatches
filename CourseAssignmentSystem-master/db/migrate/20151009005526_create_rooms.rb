class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.integer :Capacity
      
      t.timestamps null: false
    end
	add_reference :rooms, :building, index: true, foreign_key: true
  end
end
