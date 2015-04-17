# == Schema Information
#
# Table name: teachers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  telephone  :string(255)
#  email      :string(255)
#  bio        :text(65535)
#  education  :text(65535)
#  honors     :text(65535)
#  experience :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  website    :string(255)
#

require 'test_helper'

class TeacherTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
