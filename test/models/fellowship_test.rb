# == Schema Information
#
# Table name: fellowships
#
#  id         :integer          not null, primary key
#  school_id  :integer
#  teacher_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  is_active  :boolean
#

require 'test_helper'

class FellowshipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
