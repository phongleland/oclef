class CreateMentorships < ActiveRecord::Migration
  def change
    create_table :mentorships do |t|
      t.references :teacher, index: true
      t.references :student, index: true

      t.timestamps null: false
    end
    add_foreign_key :mentorships, :teachers
    add_foreign_key :mentorships, :students
  end
end
