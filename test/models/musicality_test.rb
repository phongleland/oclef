# == Schema Information
#
# Table name: musicalities
#
#  id            :integer          not null, primary key
#  teacher_id    :integer
#  instrument_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class MusicalityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
