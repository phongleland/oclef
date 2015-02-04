class Teacher < ActiveRecord::Base
  has_one :user, as: :profile, dependent: :destroy
  
  has_many :fellowships
  has_many :schools, :through => :fellowships
  
  has_many :musicalities
  has_many :instruments, :through => :musicalities
  
  has_many :mentorships
  has_many :students, :througn => :mentorships
  
end
