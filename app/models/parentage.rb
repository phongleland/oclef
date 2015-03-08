# == Schema Information
#
# Table name: parentages
#
#  id             :integer          not null, primary key
#  parent_id      :integer
#  student_id     :integer
#  parent_type_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Parentage < ActiveRecord::Base
  belongs_to :parent
  belongs_to :student
  belongs_to :parent_type
end
