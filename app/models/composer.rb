# == Schema Information
#
# Table name: composers
#
#  id         :integer          not null, primary key
#  name       :string
#  dob        :date
#  bio        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Composer < ActiveRecord::Base
  has_many :songs, dependent: :destroy
end
