class CreateFellowships < ActiveRecord::Migration
  def change
    create_table :fellowships do |t|
      t.references :school, index: true
      t.references :teacher, index: true

      t.timestamps null: false
    end
    add_foreign_key :fellowships, :schools
    add_foreign_key :fellowships, :teachers
  end
end
