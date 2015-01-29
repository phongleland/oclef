class CreateComposers < ActiveRecord::Migration
  def change
    create_table :composers do |t|
      t.string :name
      t.date :dob
      t.text :bio

      t.timestamps null: false
    end
  end
end
