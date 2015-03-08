# == Schema Information
#
# Table name: mentorships
#
#  id         :integer          not null, primary key
#  teacher_id :integer
#  student_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  start_date :date
#  end_date   :date
#

class Mentorship < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :student
end
