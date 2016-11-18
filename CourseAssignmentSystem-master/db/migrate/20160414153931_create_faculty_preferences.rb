class CreateFacultyPreferences < ActiveRecord::Migration
  def change
    create_table :faculty_preferences do |t|
      t.integer :preference1_id
      t.integer :preference2_id
      t.integer :preference3_id
      t.integer :preference4_id
      t.integer :preference5_id
      t.integer :preference6_id
      t.integer :preference7_id
      t.integer :preference8_id
      t.integer :preference9_id
      t.integer :preference10_id
      t.integer :preference11_id
      t.integer :preference12_id

      t.timestamps null: false
    end
    add_reference :faculty_preferences, :faculty_course, index: true
    # add_reference :faculty_preferences, :preference1, index: true
    # add_reference :faculty_preferences, :preference2, index: true, foreign_key: true
    # add_reference :faculty_preferences, :preference3, index: true, foreign_key: true
    add_reference :faculty_preferences, :semester, index: true, foreign_key: true
  end
end
