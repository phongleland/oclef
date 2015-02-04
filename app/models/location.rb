class Location < ActiveRecord::Base
  belongs_to :school
  belongs_to :address
end
