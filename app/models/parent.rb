# == Schema Information
#
# Table name: parents
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  telephone  :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Parent < ActiveRecord::Base
  has_one :user, as: :profile, dependent: :destroy
  has_one :address, as: :addressable, dependent: :destroy
  
  has_many :parentages
  has_many :student, :through => :parentages
  accepts_nested_attributes_for :parentages
end
