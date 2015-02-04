class CreateMusicalities < ActiveRecord::Migration
  def change
    create_table :musicalities do |t|
      t.references :teacher, index: true
      t.references :instrument, index: true

      t.timestamps null: false
    end
    add_foreign_key :musicalities, :teachers
    add_foreign_key :musicalities, :instruments
  end
end
