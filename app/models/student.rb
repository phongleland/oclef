# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string
#  dob        :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Student < ActiveRecord::Base
  has_one :user, as: :profile, dependent: :destroy
  
  has_many :parentages
  has_many :parents, :through => :parentages
  
  has_many :mentorships, dependent: :destroy
  has_many :teachers, :through => :mentorships
  
  has_many :assignments
  
end
