# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  school_id  :integer
#  address_1  :string
#  address_2  :string
#  telephone  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
