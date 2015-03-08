# == Schema Information
#
# Table name: instruments
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Instrument < ActiveRecord::Base
  has_many :musicalities, dependent: :destroy
  has_many :teachers, :through => :musicalities
end
