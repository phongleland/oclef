class Parent < ActiveRecord::Base
  has_one :user, as: :profile, dependent: :destroy
  has_one :address, as: :addressable, dependent: :destroy
  
end
