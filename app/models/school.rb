# == Schema Information
#
# Table name: schools
#
#  id         :integer          not null, primary key
#  name       :string
#  website    :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class School < ActiveRecord::Base
  has_many :locations
  has_many :addresses, :through => :locations
  
  has_many :fellowships
  has_many :teachers, :through => :fellowships
  
end
