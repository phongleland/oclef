class Parent < ActiveRecord::Base
  belongs_to :address
  has_one :user, as: :profile, dependent: :destroy
  
end
