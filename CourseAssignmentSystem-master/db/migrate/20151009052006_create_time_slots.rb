class CreateTimeSlots < ActiveRecord::Migration
  def change
    create_table :time_slots do |t|
      t.string :time_slot
      t.datetime :start
      t.datetime :end_time
      
      t.timestamps null: false
    end
    add_reference :time_slots, :day_combination, index: true, foreign_key: true
  end
end
