# == Schema Information
#
# Table name: musicalities
#
#  id            :integer          not null, primary key
#  teacher_id    :integer
#  instrument_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Musicality < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :instrument
end
