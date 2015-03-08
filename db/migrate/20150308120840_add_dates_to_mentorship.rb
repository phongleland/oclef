class AddDatesToMentorship < ActiveRecord::Migration
  def change
    add_column :mentorships, :start_date, :date
    add_column :mentorships, :end_date, :date
  end
end
