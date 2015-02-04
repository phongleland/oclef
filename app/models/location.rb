class Location < ActiveRecord::Base
  belongs_to :school
  has_one :address, as: :addressable, dependent: :destroy
  
end
