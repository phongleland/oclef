class CreateParentages < ActiveRecord::Migration
  def change
    create_table :parentages do |t|
      t.references :parent, index: true
      t.references :student, index: true
      t.references :parent_type, index: true

      t.timestamps null: false
    end
    add_foreign_key :parentages, :parents
    add_foreign_key :parentages, :students
    add_foreign_key :parentages, :parent_types
  end
end
