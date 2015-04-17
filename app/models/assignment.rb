# == Schema Information
#
# Table name: assignments
#
#  id                    :integer          not null, primary key
#  teacher_id            :integer
#  student_id            :integer
#  song_id               :integer
#  tempo                 :integer
#  is_recording_required :boolean
#  notes                 :text(65535)
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class Assignment < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :student
  belongs_to :song
  
  has_many :comments
end
