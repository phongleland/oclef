# == Schema Information
#
# Table name: fellowships
#
#  id         :integer          not null, primary key
#  school_id  :integer
#  teacher_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  is_active  :boolean
#

class Fellowship < ActiveRecord::Base
  belongs_to :school
  belongs_to :teacher
end
