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
#  notes                 :text
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

require 'test_helper'

class AssignmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
