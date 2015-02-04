class Teacher < ActiveRecord::Base
  has_one :user, as: :profile, dependent: :destroy
  has_one :address, as: :addressable, dependent: :destroy
  
  has_many :fellowships, dependent: :destroy
  has_many :schools, :through => :fellowships
  
  has_many :musicalities, dependent: :destroy
  has_many :instruments, :through => :musicalities
  
  has_many :mentorships, dependent: :destroy
  has_many :students, :througn => :mentorships
  
end
