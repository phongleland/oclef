class School < ActiveRecord::Base
  has_many :locations
  has_many :addresses, :through => :locations
  
  has_many :fellowships
  has_many :teachers, :through => :fellowships
  
end
