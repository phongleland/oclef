class CreateParentTypes < ActiveRecord::Migration
  def change
    create_table :parent_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
