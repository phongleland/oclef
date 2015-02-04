class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :telephone
      t.string :email
      t.text :bio
      t.text :education
      t.text :honors
      t.text :experience

      t.timestamps null: false
    end
  end
end
