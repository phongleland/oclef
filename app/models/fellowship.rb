class Fellowship < ActiveRecord::Base
  belongs_to :school
  belongs_to :teacher
end
