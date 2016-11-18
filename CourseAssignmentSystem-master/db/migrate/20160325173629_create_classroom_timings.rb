class CreateClassroomTimings < ActiveRecord::Migration
  def change
    create_table :classroom_timings do |t|

      t.timestamps null: false
    end
    add_reference :classroom_timings, :room, index: true, foreign_key: true
    add_reference :classroom_timings, :time_slot, index: true, foreign_key: true
    add_reference :classroom_timings, :day_combination, index: true, foreign_key: true
    add_reference :classroom_timings, :semester, index: true, foreign_key: true
  end
end
