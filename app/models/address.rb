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

class Address < ActiveRecord::Base
  belongs_to :addressable, polymorphic: true
end
