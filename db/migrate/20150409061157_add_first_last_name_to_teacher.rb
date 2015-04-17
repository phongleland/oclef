class AddFirstLastNameToTeacher < ActiveRecord::Migration
  def change
    add_column :teachers, :firstname, :string
    add_column :teachers, :lastname, :string
  end
end
