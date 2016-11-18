class CreateFacultyCourses < ActiveRecord::Migration
  def change
    create_table :faculty_courses do |t|
      t.integer :course1_id
      t.integer :course2_id
      t.integer :course3_id

      t.timestamps null: false
    end
    add_reference :faculty_courses, :faculty, index: true, foreign_key: true
    add_reference :faculty_courses, :semester, index: true, foreign_key: true
  end
end
