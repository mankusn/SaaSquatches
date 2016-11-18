class CreateFaculties < ActiveRecord::Migration
  def change
    create_table :faculties do |t|
      t.string :faculty_name
      t.string :permission
      t.integer :preference
      t.integer :bad_preference

      t.timestamps null: false
    end
  end
end
