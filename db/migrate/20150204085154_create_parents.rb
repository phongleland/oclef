class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :name
      t.string :telephone
      t.string :email
      t.references :location, index: true

      t.timestamps null: false
    end
    add_foreign_key :parents, :locations
  end
end
