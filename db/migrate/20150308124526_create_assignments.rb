class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.references :teacher, index: true
      t.references :student, index: true
      t.references :song, index: true
      t.integer :tempo
      t.boolean :is_recording_required
      t.text :notes

      t.timestamps null: false
    end
    add_foreign_key :assignments, :teachers
    add_foreign_key :assignments, :students
    add_foreign_key :assignments, :songs
  end
end
