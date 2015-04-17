# == Schema Information
#
# Table name: comments
#
#  id            :integer          not null, primary key
#  notes         :text(65535)
#  user_id       :integer
#  assignment_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
