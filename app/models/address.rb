# == Schema Information
#
# Table name: addresses
#
#  id               :integer          not null, primary key
#  street_1         :string(255)
#  street_2         :string(255)
#  city             :string(255)
#  province         :string(255)
#  postal_code      :string(255)
#  country          :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  addressable_id   :integer
#  addressable_type :string(255)
#

class Address < ActiveRecord::Base
  belongs_to :addressable, polymorphic: true
end
