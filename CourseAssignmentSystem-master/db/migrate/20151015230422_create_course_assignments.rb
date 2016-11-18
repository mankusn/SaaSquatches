class CreateCourseAssignments < ActiveRecord::Migration
  def change
    create_table :course_assignments do |t|

      t.timestamps null: false
    end
    add_reference :course_assignments, :faculty, index: true, foreign_key: true
    add_reference :course_assignments, :course, index: true, foreign_key: true
    add_reference :course_assignments, :room, index: true, foreign_key: true
    add_reference :course_assignments, :day_combination, index: true, foreign_key: true
    add_reference :course_assignments, :time_slot, index: true, foreign_key: true
    add_reference :course_assignments, :semester, index: true, foreign_key: true
  end
end
