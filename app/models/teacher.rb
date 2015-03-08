# == Schema Information
#
# Table name: teachers
#
#  id         :integer          not null, primary key
#  name       :string
#  telephone  :string
#  email      :string
#  bio        :text
#  education  :text
#  honors     :text
#  experience :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Teacher < ActiveRecord::Base
  has_one :user, as: :profile, dependent: :destroy
  has_one :address, as: :addressable, dependent: :destroy
  
  has_many :fellowships, dependent: :destroy
  has_many :schools, :through => :fellowships
  
  has_many :musicalities, dependent: :destroy
  has_many :instruments, :through => :musicalities
  
  has_many :mentorships, dependent: :destroy
  has_many :students, :through => :mentorships
  
  has_many :assignments
  
end
