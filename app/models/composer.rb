# == Schema Information
#
# Table name: composers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  dob        :date
#  bio        :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Composer < ActiveRecord::Base
  has_many :songs, dependent: :destroy
end
