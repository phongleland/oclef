class Parentage < ActiveRecord::Base
  belongs_to :parent
  belongs_to :student
  belongs_to :parent_type
end
