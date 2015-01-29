class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.integer :book_id
      t.integer :start_page
      t.integer :end_page
      t.string :title
      t.integer :composer_id

      t.timestamps null: false
    end
  end
end
