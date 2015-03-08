# == Schema Information
#
# Table name: composers
#
#  id         :integer          not null, primary key
#  name       :string
#  dob        :date
#  bio        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ComposerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
