# == Schema Information
#
# Table name: parentages
#
#  id             :integer          not null, primary key
#  parent_id      :integer
#  student_id     :integer
#  parent_type_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class ParentageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
