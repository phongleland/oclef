# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  school_id  :integer
#  telephone  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Location < ActiveRecord::Base
  belongs_to :school
  has_one :address, as: :addressable, dependent: :destroy
  
end
