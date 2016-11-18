class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.text :note
      
      t.timestamps null: false
    end
    add_reference :preferences, :day_combination, index: true, foreign_key: true
    add_reference :preferences, :time_slot, index: true, foreign_key: true
    add_reference :preferences, :building, index: true, foreign_key: true
    add_reference :preferences, :semester, index: true, foreign_key: true
  end
end
