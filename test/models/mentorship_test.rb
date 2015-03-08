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

require 'test_helper'

class MentorshipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
