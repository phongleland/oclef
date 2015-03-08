# == Schema Information
#
# Table name: addresses
#
#  id               :integer          not null, primary key
#  street_1         :string
#  street_2         :string
#  city             :string
#  province         :string
#  postal_code      :string
#  country          :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  addressable_id   :integer
#  addressable_type :string
#

require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
