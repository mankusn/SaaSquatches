class CreateTimeRanges < ActiveRecord::Migration
  def change
    create_table :time_ranges do |t|
      t.string :t_range
      t.string :t_slots

      t.timestamps null: false
    end
    add_reference :time_ranges, :day_combination, index: true, foreign_key: true
  end
end
